import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        body: Column(
          children: <Widget>[
            Image.asset('images/background.jpg'),
            Text("Albums"),
            Text("Artists"),
            Text("Songs")
          ],
        )
      ),
    );
  }
}
