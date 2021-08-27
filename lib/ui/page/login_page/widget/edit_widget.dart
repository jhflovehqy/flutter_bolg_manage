import 'package:blog/res/style.dart';
import 'package:blog/util/formatter/customized_length_formatter.dart';
import 'package:blog/util/formatter/customized_text_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// @class : EditWidget
/// @date : 2021/08/17
/// @name : jhf
/// @description :输入框样式，左边图标，右边输入框
class EditWidget extends StatefulWidget {
  ///输入框文字改变
  final ValueChanged<String>? onChanged;

  ///提示文字
  String hintText = "";

  ///图标Widget
  Widget iconWidget;

  ///图标Widget
  bool passwordType = false;

  EditWidget({
    Key? key,
    this.onChanged,
    this.hintText = "",
    this.passwordType = false,
    required this.iconWidget,
  }) : super(key: key);

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {

  bool showPassWord = false;
  bool eyeExpand = true;


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.left,
            autofocus: false,
            maxLines: 1,
            obscureText: eyeExpand && widget.passwordType,
            style: Styles.style_white_16,
            onChanged: (text) {
              if (widget.onChanged != null) {
                widget.onChanged!(text);
              }
              setState(() {
                showPassWord = text.isNotEmpty;
              });
            },
            inputFormatters: [
              ///输入长度和格式限制
              CustomizedLengthTextInputFormatter(16),
              CustomizedTextInputFormatter(
                filterPattern: RegExp("[a-zA-Z]|[0-9]"),
              ),
            ],

            ///样式
            decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                hintText: widget.hintText,
                hintStyle: Styles.style_white_16,
                border: _getEditBorder(false),
                focusedBorder: _getEditBorder(true),
                disabledBorder: _getEditBorder(false),
                enabledBorder: _getEditBorder(false),
                contentPadding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 60, right: 16)),
          ),
          margin: const EdgeInsets.only(top: 8, bottom: 8, left: 25, right: 25),
        ),
        Positioned(
          width: 36,
          height: 36,
          left: 36,
          child: widget.iconWidget,
        ),
        Positioned(
          left: 76,
          child: Container(
            width: 1,
            height: 18,
            color: Colors.white54,
          ),
        ),
        Positioned(
          right: 40,
          child: Visibility(
            visible: showPassWord && widget.passwordType,
            child: IconButton(
              icon: Icon(
                eyeExpand ? Icons.remove_red_eye : Icons.visibility_off,
                size: 24,
                color: Colors.white,
              ) ,
              onPressed: () {
                setState(() {
                  eyeExpand = !eyeExpand;
                });
              },
            ),
          ),
        )
      ],
    );
  }

  ///获取输入框的Border属性，可公用
  ///[isEdit]是否获取焦点
  OutlineInputBorder _getEditBorder(bool isEdit) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: isEdit ? Colors.green : Colors.white24,
        width: 1,
      ),
    );
  }
}
