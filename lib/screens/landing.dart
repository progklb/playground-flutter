import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/fluttermaps.dart';
import 'package:flutter_playground/screens/randomWords.dart';
import 'package:flutter_playground/screens/flchart.dart';
import 'package:flutter_playground/screens/fileStorage.dart';

class Landing extends StatelessWidget {
  static const String route = 'landing';

  Widget createEntry(BuildContext context, {String title, Function onPressed}) {
    return TextButton(
      child: Text("$title"),
      onPressed: onPressed,
    );
  }

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
          createEntry(context, title: "Startup Name Generator", onPressed: () {
            Navigator.pushNamed(context, "/${RandomWords.route}");
          }),
          createEntry(context, title: "FL Chart", onPressed: () {
            Navigator.pushNamed(context, "/${FLChart.route}");
          }),
          createEntry(context, title: "Flutter Map", onPressed: () {
            Navigator.pushNamed(context, "/${FlutterMaps.route}");
          }),
          createEntry(context, title: "File Storage", onPressed: () {
            Navigator.pushNamed(context, "/${FileStorage.route}");
          }),
        ]));
  }
}
