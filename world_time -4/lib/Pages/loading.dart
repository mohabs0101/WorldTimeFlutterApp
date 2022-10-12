import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:world_time/Services/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void SetupworldTime() async {
    world_time obj = world_time(location: 'Baghdad', url: 'Asia/baghdad',flag: 'germany.png');
    await obj.gettime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': obj.location,
      'time': obj.time,
      'isDaytime':obj.isDaytime,
      'flag':obj.flag,
    });
  }

  @override
  void initState() {
    super.initState();

    SetupworldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Center(
            child: SpinKitFoldingCube(
              color: Colors.white,
              size: 100.0,
            ),
          ),
        ));
  }
}
