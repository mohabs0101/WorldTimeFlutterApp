
import 'package:flutter/material.dart';
import 'Pages/home.dart';
import 'Pages/loading.dart';
import 'Pages/choose_location.dart';

void main() =>runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
  //this for test purpos initialrout will override the '/'
initialRoute: '/',
routes: {
    '/': (context)=>loading(),
    '/home' : (context) => Home(),
    '/location' : (context)=>choose_location(),
},



));





 
