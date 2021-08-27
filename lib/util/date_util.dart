

class DateUtil{


  static String milliseconds2Date(int timestamp){
    var date =  DateTime.fromMillisecondsSinceEpoch(timestamp);
    return date.toLocal().toString().substring(0, 16);
  }

}