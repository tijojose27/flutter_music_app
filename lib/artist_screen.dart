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
            title: Text("Music App"),
            backgroundColor: Colors.black87,
          ),
          body: ArtistList(currMusic: currMusic,),
        ));
  }
}


class ArtistList extends StatelessWidget{
  ArtistList({this.currMusic});
  List<Music> currMusic;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: currMusic.length,
        itemBuilder: (context, position){
          return Text(currMusic[position].artistName);
        }
    );
  }

}