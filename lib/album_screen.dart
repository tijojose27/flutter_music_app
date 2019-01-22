import 'package:flutter/material.dart';
import 'package:flutter_music_app/data_model/music.dart';

class AlbumScreen extends StatelessWidget {
  AlbumScreen({this.currMusic});
  List<Music> currMusic;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Music UI App',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text("Albums"),
              backgroundColor: Colors.black87,
            ),
            body: AlbumList(
              currMusic: currMusic,
            )));
  }
}

class AlbumList extends StatelessWidget {
  AlbumList({this.currMusic});
  List<Music> currMusic;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currMusic.length,
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(currMusic[position].albumName, style: TextStyle(fontSize: 22.0)),
          ),
        );
      },
    );
  }
}
