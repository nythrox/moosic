import 'package:moosic/src/pages/components/song_time_slider/ISongTimeSliderBloc.dart';
import 'package:moosic/src/shared/blocs/ICurrentPlayingSongBloc.dart';
import 'package:moosic/src/shared/blocs/current_playing_song_bloc.dart';
import 'package:rxdart/rxdart.dart';

class SongTimeSliderBloc implements ISongTimeSliderBloc {
  ICurrentPlayingSongBloc currentPlayingSongBloc = CurrentPlayingSongBloc();

  @override
  BehaviorSubject<double> get playingSongValue =>
      currentPlayingSongBloc.playingSongCurrentTimeStream;
  @override
  get addPlayingSongValue => currentPlayingSongBloc.addplayingSongCurrentTime;

  @override
  dispose() {}
}
