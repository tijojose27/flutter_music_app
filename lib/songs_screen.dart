import 'package:flutter/material.dart';

class SongsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Music UI App',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Music App"),
            backgroundColor: Colors.black87,
          ),
          body: Text("Song stuff"),
        ));
  }
}
