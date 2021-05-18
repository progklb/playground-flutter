import 'package:flutter/material.dart';
import 'package:flutter_startup_namer/landing.dart';
import 'package:flutter_startup_namer/randomWords.dart';
import 'package:flutter_startup_namer/fluttermaps.dart';
import 'package:flutter_startup_namer/flchart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Name Generator",
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        "/": (context) => Landing(),
        "/${RandomWords.route}": (context) => RandomWords(),
        "/${FlutterMaps.route}": (context) => FlutterMaps(),
        "/${FLChart.route}": (context) => FLChart(),
      },
    );
  }
}
