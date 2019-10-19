import 'package:flutter/material.dart';
import 'package:moosic/src/pages/components/song_time_slider/song_time_slider.dart';
import 'package:moosic/src/shared/models/song.dart';
import 'package:moosic/src/shared/style/style.dart';

class SingleSongView extends StatelessWidget {
  final SongModel song;

  const SingleSongView({Key key, this.song}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Placeholder(
          color: Style.evilGreen
        ),
        SongTimeSlider(song: song),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(song.name,style: TextStyle(fontSize: 23),),
              SizedBox(height: 10,),
              Text(song.authorName),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.replay),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.navigate_before),
              onPressed: () {},
            ),
            FlatButton(
              color: Style.evilGreen,
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              child: Icon(Icons.play_arrow),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.compare_arrows),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 40)
      ],
    );
  }
}
