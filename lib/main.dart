import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Startup Name Generator", home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

// Note that this is a generic state class, specialized for use with RandomWords.
// Most of the app logic will reside here, as it will store all generated words for display.
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _savedWords = <WordPair>{};
  final _fontSize = TextStyle(fontSize: 18.0);

  // Builds a list of suggestions, separated by dividers.
  Widget _buildSuggestionsList() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        // This callback is called once per suggested word pairing
        itemBuilder: (context, i) {
          // For each odd iteration, create a divider.
          if (i.isOdd) return Divider();
          // For even iterations, create a word pair.
          final index = i ~/ 2; // Dividde i by 2 and return integer result.
          // If we've passed the nubmer of created word pairs, generate more.
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);
        });
  }

  // Builds a single list item.
  Widget _buildRow(WordPair pair) {
    // Check whether our generated word is already favourited.
    final alreadySaved = _savedWords.contains(pair);
    return ListTile(
        title: Text(pair.asPascalCase, style: _fontSize),
        trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Startup Name Generator")),
        body: _buildSuggestionsList());
  }
}
