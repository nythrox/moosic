import 'package:moosic/src/shared/blocs/ICurrentPlayingSongBloc.dart';
import 'package:moosic/src/shared/models/song.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class CurrentPlayingSongBloc implements ICurrentPlayingSongBloc{

  final BehaviorSubject<SongModel> playingSong$ = BehaviorSubject<SongModel>();
  final BehaviorSubject<double> playingSongCurrentTime$ = BehaviorSubject<double>.seeded(0);

  @override
  Observable<SongModel> get playingSongStream => playingSong$.stream;
  @override
  Observable<double> get playingSongCurrentTimeStream => playingSongCurrentTime$.stream;

  @override
  get addPlayingSong => playingSong$.add;
  @override
  get addplayingSongCurrentTime => playingSongCurrentTime$.add;

  @override
  void dispose() {
    playingSong$.close();
    playingSongCurrentTime$.close();
  }

  //código pra transformar em singleton

  factory CurrentPlayingSongBloc (){
    return _instance;
  }

  static CurrentPlayingSongBloc _instance = CurrentPlayingSongBloc._instanciate();

  CurrentPlayingSongBloc._instanciate();


}