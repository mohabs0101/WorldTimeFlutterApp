import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class world_time {
  late String location; //location from ui
  late String flag;//url to an assit flag icon
  late String url; //location api from that api endpoint

  late String time; //the time from that api
  late   bool isDaytime;

  world_time({required this.location, required this.url,required this.flag});

  Future<void> gettime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // time = now.toString();
      isDaytime=now.hour>6 && now.hour<21 ?true :false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('error caused by $e');
      time = 'could not get the time';
    }
  }
}
