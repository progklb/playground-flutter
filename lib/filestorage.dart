import 'package:flutter/material.dart';

class FileStorage extends StatefulWidget {
  static const String route = 'fileStorage';

  const FileStorage({Key key}) : super(key: key);

  @override
  _FileStorageState createState() => _FileStorageState();
}

class _FileStorageState extends State<FileStorage> {
  TextButton saveButton = TextButton(child: Text("Save"), onPressed: () => {});
  TextButton loadButton = TextButton(child: Text("Load"), onPressed: () => {});

  Widget createTextEntry(BuildContext context, String placeholderText) {
    return TextField(decoration: InputDecoration(labelText: placeholderText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("File Storage")),
      body: Column(children: [
        createTextEntry(context, "First name(s)"),
        createTextEntry(context, "Surname"),
        Divider(height: 50, color: Colors.blue),
        Row(children: [saveButton, loadButton])
      ]),
    );
  }
}
