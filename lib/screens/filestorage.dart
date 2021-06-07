/*
Demonstrates saving/loading data to and from a JSON file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/user.dart';

class FileStorage extends StatefulWidget {
  static const String route = 'fileStorage';

  const FileStorage({Key key}) : super(key: key);

  @override
  _FileStorageState createState() => _FileStorageState();
}

class _FileStorageState extends State<FileStorage> {
  /// The model that is storing our user data.
  User userModel;

  /// Saves the current user details as a JSON object to storage.
  void saveUser() {}

  /// Loads the stored JSON user details and populates the UI.
  void loadUser() {}

  Widget createTextEntry(
      BuildContext context, String placeholderText, String currentText) {
    // Create a text controller so that we can set the text.
    // Note that we manually move the position of the cursor to the end of the field.
    var textController = new TextEditingController();
    textController.value = TextEditingValue(
        text: currentText,
        selection: TextSelection.fromPosition(
            TextPosition(offset: currentText.length)));

    return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
            controller: textController,
            decoration: InputDecoration(labelText: placeholderText)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("File Storage")),
        body: Column(children: [
          createTextEntry(context, "First Name(s)", userModel?.firstName ?? ""),
          createTextEntry(context, "Surname", userModel?.surname ?? ""),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                TextButton(child: Text("Save"), onPressed: saveUser),
                TextButton(child: Text("Load"), onPressed: loadUser)
              ])),
        ]));
  }
}
