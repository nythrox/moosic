import 'package:moosic/src/shared/blocs/bloc.dart';
import 'package:moosic/src/shared/models/song.dart';
import 'package:rxdart/rxdart.dart';

abstract class ICurrentPlayingSongBloc extends IBloc{
  Observable<SongModel> get playingSongStream;
  Observable<double> get playingSongCurrentTimeStream;

  get addPlayingSong;
  get addplayingSongCurrentTime;
}

