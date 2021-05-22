import 'package:flutter/material.dart';
import 'package:flutter_playground/fluttermaps.dart';
import 'package:flutter_playground/randomWords.dart';
import 'package:flutter_playground/flchart.dart';

class Landing extends StatelessWidget {
  static const String route = 'landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose your mode")),
      body: ListView(children: [
        TextButton(
          child: Text("Startup Name Generator"),
          onPressed: () {
            Navigator.pushNamed(context, "/${RandomWords.route}");
          },
        ),
        TextButton(
          child: Text("FL Chart"),
          onPressed: () {
            Navigator.pushNamed(context, "/${FLChart.route}");
          },
        ),
        TextButton(
            child: Text("Maps"),
            onPressed: () {
              Navigator.pushNamed(context, "/${FlutterMaps.route}");
            })
      ]),
    );
  }
}
