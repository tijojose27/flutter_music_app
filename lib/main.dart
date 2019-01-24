import 'package:flutter/material.dart';
import 'package:flutter_music_app/data_model/music.dart';
import 'album_screen.dart';
import 'artist_screen.dart';
import 'songs_screen.dart';

void main() => runApp(MyApp());

List<Music> myMusic = []
    ..add(Music("14 and under", "Sing Along", "Kids", 'images/kids.jpg'))
    ..add(Music("Russian ballet", "This ballerina", "Ballerina", 'images/ballerina.jpg'))
    ..add(Music("Emptional", "Violin Sad", "Great Violin", 'images/violin.jpg'));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Music UI App',
        theme: ThemeData(brightness: Brightness.dark),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String background = 'images/background.jpg';
    return Scaffold(
        appBar: AppBar(
          title: Text("Music App"),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('$background'),
            Expanded(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: FlatButton(
                    child: Text(
                      "Albums",
                      style: TextStyle(
                          fontFamily: 'Charm',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return new AlbumScreen(currMusic: myMusic,);
                      }));
                    },
                  )),
            ),
            Expanded(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: FlatButton(
                    child: Text(
                      "Songs",
                      style: TextStyle(
                          fontFamily: 'Charm',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context){
                          return SongsScreen();
                        })
                      );
                    },
                  )),
            ),
            Expanded(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: FlatButton(
                    child: Text(
                      "Artists",
                      style: TextStyle(
                          fontFamily: 'Charm',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ArtistScreen(currMusic: myMusic,);
                      }));
                    },
                  )),
            )
          ],
        ));
  }

}
