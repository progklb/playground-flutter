import 'package:flutter/material.dart';
import 'package:flutter_startup_namer/randomWords.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose your mode")),
      body: ListView(children: [
        TextButton(
          child: Text("Startup Name Generator"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RandomWords();
            }));
          },
        ),
        TextButton(
            child: Text("Other"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RandomWords();
              }));
            })
      ]),
    );
  }
}
