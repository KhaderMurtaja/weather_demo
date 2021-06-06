library city_weather_event;

import 'package:built_value/built_value.dart';

part 'city_weather_event.g.dart';

abstract class CityWeatherEvent {}

// Get City Weather Event
abstract class GetCityWeather extends CityWeatherEvent
    implements Built<GetCityWeather, GetCityWeatherBuilder> {
  GetCityWeather._();
  String get cityName;

  factory GetCityWeather([
    updates(GetCityWeatherBuilder b),
  ]) = _$GetCityWeather;
}

// Clear Error Event
abstract class ClearError extends CityWeatherEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

// Change State Event
abstract class ChangeState extends CityWeatherEvent
    implements Built<ChangeState, ChangeStateBuilder> {
  ChangeState._();

  factory ChangeState([
    updates(ChangeStateBuilder b),
  ]) = _$ChangeState;
}
