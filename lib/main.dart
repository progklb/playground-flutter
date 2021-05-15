import 'package:flutter/material.dart';
import 'package:flutter_startup_namer/randomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Startup Name Generator",
        theme: ThemeData(primaryColor: Colors.white),
        home: RandomWords());
  }
}
