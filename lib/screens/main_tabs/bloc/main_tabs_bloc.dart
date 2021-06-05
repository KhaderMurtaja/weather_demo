import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/screens/main_tabs/bloc/main_tabs_event.dart';
import 'package:weather_demo/screens/main_tabs/bloc/main_tabs_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    MainState initialState,
  ) : super(initialState);

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is GetLatLong) {
      try {
        yield state.rebuild((b) => b
          ..error = ''
          ..success = false
          ..isLoading = true
          ..lat = null
          ..long = null);
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        yield state.rebuild((b) => b
          ..error = ''
          ..success = true
          ..isLoading = false
          ..lat = position.latitude
          ..long = position.longitude);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'Cannot access your Location !'
          ..success = false
          ..isLoading = false
          ..lat = null
          ..long = null);
      }
    }
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is ChangeState) {
      yield state.rebuild((b) => b..success = false);
    }
  }
}
