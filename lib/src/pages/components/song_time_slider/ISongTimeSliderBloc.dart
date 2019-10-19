import 'package:moosic/src/shared/blocs/bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class ISongTimeSliderBloc extends IBloc{
    
  Observable<double> get playingSongValue;
  get addPlayingSongValue;

}
