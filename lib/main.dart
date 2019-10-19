import 'package:flutter/material.dart';
import 'package:moosic/src/pages/SingleSongView/single_song_view.dart';
import 'package:moosic/src/shared/models/song.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SingleSongView(song: SongModel(name: "Just Dance",authorName: "Lady Gaga",duration: Duration(seconds: 251)),),
      ),
    );
  }
}
