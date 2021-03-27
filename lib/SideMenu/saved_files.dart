import "package:flutter/material.dart";

class SavedFilesPage extends StatefulWidget {
  @override
  _SavedFilesPageState createState() => _SavedFilesPageState();
}

class _SavedFilesPageState extends State<SavedFilesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text('Saved Files')));
  }
}
