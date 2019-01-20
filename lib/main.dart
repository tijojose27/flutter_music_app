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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/background.jpg'),
              Expanded(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                        minWidth: double.infinity),
                    child: FlatButton(
                      child: Text("Albums", style: TextStyle(fontFamily: 'Charm', fontWeight: FontWeight.bold, fontSize:40.0),),
                      onPressed: () {},
                    )),
              ),
              Expanded(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                        minWidth: double.infinity),
                    child: FlatButton(
                      child: Text("Songs", style: TextStyle(fontFamily: 'Charm', fontWeight: FontWeight.bold, fontSize:40.0),),
                      onPressed: () {},
                    )),
              ),
              Expanded(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(
                        minWidth: double.infinity),
                    child: FlatButton(
                      child: Text("Artists", style: TextStyle(fontFamily: 'Charm', fontWeight: FontWeight.bold, fontSize:40.0),),
                      onPressed: () {},
                    )),
              )
            ],
          )),
    );
  }
}
