import 'dart:math';
import 'package:flutter/material.dart';
import 'package:moosic/src/pages/components/song_time_slider/ISongTimeSliderBloc.dart';
import 'package:moosic/src/pages/components/song_time_slider/song_time_slider_bloc.dart';
import 'package:moosic/src/shared/models/song.dart';
import 'package:moosic/src/shared/style/style.dart';

class SongTimeSlider extends StatelessWidget {
  
  SongTimeSlider({Key key, this.song}) : super(key: key);

  final SongModel song;
  final ISongTimeSliderBloc bloc = SongTimeSliderBloc();

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        SizedBox(
          height: 40,
          width: double.infinity,
          child: StreamBuilder<double>(
              stream: bloc.playingSongValue,
              initialData: 0.0,
              builder: (context, snapshot) {
                return Slider(
                  min: 0,
                  max: song.duration.inSeconds * 1.0,
                  activeColor: Style.evilGreen,
                  inactiveColor: Style.evilGrey,
                  value: snapshot.data,
                  onChanged: bloc.addPlayingSongValue,
                );
              }),
        ),
        StreamBuilder<double>(
            stream: bloc.playingSongValue,
            initialData: 0.0,
            builder: (context, snapshot) {
              return Positioned(
                left: 15,
                top: 40,
                child: Text(
                  timeLabel(Duration(seconds: snapshot.data.round())),
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
        Positioned(
          right: 20,
          top: 40,
          child: Text(
            timeLabel(song.duration),
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

String timeLabel(Duration duration) {
  int minutes = duration.inMinutes;
  int seconds = duration.inSeconds.remainder(60).round();
  //add 0 to seconds if is less then 10\/
  if (seconds < 10) {
  return minutes.toString() + ":0" + seconds.toString();
  }
  return minutes.toString() + ":" + seconds.toString();
}
