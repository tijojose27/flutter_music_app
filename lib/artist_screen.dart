import 'package:flutter/material.dart';
import 'package:flutter_music_app/data_model/music.dart';

class ArtistScreen extends StatelessWidget {
  ArtistScreen({this.currMusic});
  List<Music> currMusic;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Music UI App',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Artists"),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop()),
            backgroundColor: Colors.black87,
          ),
          body: ArtistList(
            currMusic: currMusic,
          ),
        ));
  }
}

class ArtistList extends StatelessWidget {
  ArtistList({this.currMusic});
  List<Music> currMusic;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: currMusic.length,
        itemBuilder: (context, position) {
          return Card(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    currMusic[position].artistName,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ))));
        });
  }
}
