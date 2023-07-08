import 'dart:ffi';

import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;
  late bool isDayTime;
  WorldTime ({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try{
      Response response = await get(
          Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour > 6 && now.hour <20? true: false;
      time = DateFormat.jm().format(now);

    }catch(e){
      print('Catch error: $e');
      time = 'Could not get the time data';
    }
    // String offset = data['utc_offset'];
    // DateTime now = DateTime.parse(datetime.substring(0, 26));
    // now.add(Duration(hours: int.parse(offset.substring(0,3))));
    // print(datetime);
    // print(now);
  }
}