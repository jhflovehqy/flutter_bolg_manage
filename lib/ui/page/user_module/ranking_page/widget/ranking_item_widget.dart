import 'package:blog/model/request_ranking.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


/// @class : RankingItemWidget
/// @date : 2021/08/25
/// @name : jhf
/// @description :ListView item
class RankingItemWidget extends StatelessWidget {


  ///排名信息
  Ranking ranking;

  RankingItemWidget({Key? key, required this.ranking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: _numberRankingWidget(int.parse(ranking.rank)),
                )),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    ranking.username,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Styles.style_black_16_bold,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    ranking.coinCount.toString(),
                    style: Styles.style_black_16_bold,
                  ),
                ))
          ],
        )
    );
  }

  ///根据排名设置图标或排名名称
  ///[rank]排名
  Widget _numberRankingWidget(int rank) {
    return rank == 1 || rank == 2 || rank == 3 ?
    SvgPicture.asset(
      _getMedal(rank),
      width: 26,
    ) :
    Text(
      ranking.rank.toString(),
      style: Styles.style_black_16_bold,
    );
  }

  ///根据排名获取金牌、银牌、铜牌
  ///[rank]排名
  String _getMedal(int rank) {
    String medal = '';
     switch (rank) {
      case 1 :
        medal = R.assetsImagesMedalGold;
        break;
      case 2 :
        medal = R.assetsImagesMedalSilver;
        break;
      case 3 :
        medal = R.assetsImagesMedalBronze;
        break;
    }
    return medal;
  }
}
