library city_weather_state;

import 'package:built_value/built_value.dart';
import 'package:weather_demo/model/city_weather/city_weather_model.dart';

part 'city_weather_state.g.dart';

abstract class CityWeatherState
    implements Built<CityWeatherState, CityWeatherStateBuilder> {
  String get error;
  bool get isLoading;
  bool get success;
  CityWeatherModel? get cityWeather;

  CityWeatherState._();

  factory CityWeatherState([
    updates(CityWeatherStateBuilder b),
  ]) = _$CityWeatherState;

  factory CityWeatherState.initail() {
    return CityWeatherState((b) => b
      ..error = ''
      ..isLoading = false
      ..success = false
      ..cityWeather = null);
  }
}
