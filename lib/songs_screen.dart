import 'package:flutter/material.dart';
import 'package:flutter_music_app/data_model/music.dart';

class SongsScreen extends StatelessWidget {
  SongsScreen({this.currMusic});
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
                onPressed: () => Navigator.of(context).pop()),
            title: Text("Songs"),
            backgroundColor: Colors.black87,
          ),
          body: SongsList(
            currMusic: currMusic,
          ),
        ));
  }
}

class SongsList extends StatelessWidget {
  SongsList({this.currMusic});
  List<Music> currMusic;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: currMusic.length,
        itemBuilder: (context, position) {
          return Container(
              height: 120.0,
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Stack(
                children: <Widget>[
                  myCard(currMusic[position]),
                  myPicture(currMusic[position])
                ],
              ));
        });
  }

  Widget myCard(Music singleMusic) {
    return Container(
      margin: EdgeInsets.fromLTRB(115.0, 13.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(
            singleMusic.songName,
            style: TextStyle(fontSize: 20.0),
          ),
          Container(height: 10.0),
          Text(singleMusic.artistName),
          Container(
              height: 10.0,
          ),
          Text(singleMusic.albumName)
        ],
      ),
    );
  }

  Widget myPicture(Music singleMusic) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(singleMusic.imageUrl),
        height: 92.0,
        width: 92.0,
      ),
    );
  }
}
