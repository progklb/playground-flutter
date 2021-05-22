import 'package:flutter/material.dart';
import 'package:flutter_playground/landing.dart';
import 'package:flutter_playground/randomWords.dart';
import 'package:flutter_playground/fluttermaps.dart';
import 'package:flutter_playground/flchart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Playground",
        theme: ThemeData(primaryColor: Colors.white),
        routes: {
          "/": (context) => Landing(),
          "/${RandomWords.route}": (context) => RandomWords(),
          "/${FlutterMaps.route}": (context) => FlutterMaps(),
          "/${FLChart.route}": (context) => FLChart(),
        });
  }
}
