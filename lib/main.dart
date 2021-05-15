import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
            appBar: AppBar(title: Text("Welcome to Flutter")),
            body: Center(child: RandomWords())));
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

// Note that this is a generic state class, specialized for use with RandomWords.
// Most of the app logic will reside here, as it will store all generated words for display.
class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
