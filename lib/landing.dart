import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose your mode")),
      body: ListView(children: [
        TextButton(
          child: Text("Startup Name Generator"),
          onPressed: () {
            Navigator.pushNamed(context, "/randomWords");
          },
        ),
        TextButton(
            child: Text("Other"),
            onPressed: () {
              Navigator.pushNamed(context, "/other");
            })
      ]),
    );
  }
}
