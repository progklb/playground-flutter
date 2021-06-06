import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/landing.dart';
import 'package:flutter_playground/screens/randomWords.dart';
import 'package:flutter_playground/screens/fluttermaps.dart';
import 'package:flutter_playground/screens/flchart.dart';
import 'package:flutter_playground/screens/fileStorage.dart';

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
          "/${FileStorage.route}": (context) => FileStorage(),
        });
  }
}
