import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/fluttermaps.dart';
import 'package:flutter_playground/screens/randomWords.dart';
import 'package:flutter_playground/screens/flchart.dart';
import 'package:flutter_playground/screens/fileStorage.dart';

class Landing extends StatelessWidget {
  static const String route = 'landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Choose an experiment")),

        // Hide an about dialog in the FAB! \o/
        floatingActionButton: FloatingActionButton(
            tooltip: "About",
            child: const Icon(Icons.emoji_food_beverage),
            onPressed: () => showAboutDialog(
                context: context,
                applicationIcon: Icon(Icons.emoji_food_beverage),
                applicationLegalese:
                    "This app is a playground for learning and experimentation with Flutter.\n\nHappy building!")),

        // Main content
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
              child: Text("Flutter Map"),
              onPressed: () {
                Navigator.pushNamed(context, "/${FlutterMaps.route}");
              }),
          TextButton(
              child: Text("File Storage"),
              onPressed: () {
                Navigator.pushNamed(context, "/${FileStorage.route}");
              })
        ]));
  }
}
