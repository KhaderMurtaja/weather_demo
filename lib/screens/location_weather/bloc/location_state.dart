library location_state;

import 'package:built_value/built_value.dart';
import 'package:weather_demo/model/location_weather/location_weather_model.dart';

part 'location_state.g.dart';

abstract class LocationState
    implements Built<LocationState, LocationStateBuilder> {
  String get error;
  bool get success;
  bool get isLoading;
  LocationWeatherModel? get locationWeather;

  LocationState._();

  factory LocationState([
    updates(LocationStateBuilder b),
  ]) = _$LocationState;

  factory LocationState.initail() {
    return LocationState((b) => b
      ..error = ''
      ..success = false
      ..isLoading = false
      ..locationWeather = null);
  }
}
