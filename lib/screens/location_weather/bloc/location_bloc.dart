import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_demo/data/repository/irepository.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_event.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  late IRepository _iRepository;

  LocationBloc(
    LocationState initialState,
  ) : super(initialState);

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is GetLocationWeather) {
      try {
        yield state.rebuild((b) => b
          ..error = ''
          ..success = false
          ..isLoading = true
          ..locationWeather = null);

        final locationWeatherData = await _iRepository.getLocationWeather(
          event.lat,
          event.long,
        );

        yield state.rebuild((b) => b
          ..error = ''
          ..success = true
          ..isLoading = false
          ..locationWeather = locationWeatherData);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'Cannot get Weather !'
          ..success = false
          ..isLoading = false
          ..locationWeather = null);
      }
    }
  }
}
