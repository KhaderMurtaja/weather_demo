library location_event;

import 'package:built_value/built_value.dart';

part 'location_event.g.dart';

abstract class LocationEvent {}

// Get Location Weather Event
abstract class GetLocationWeather extends LocationEvent
    implements Built<GetLocationWeather, GetLocationWeatherBuilder> {
  double get lat;
  double get long;
  GetLocationWeather._();

  factory GetLocationWeather([
    updates(GetLocationWeatherBuilder b),
  ]) = _$GetLocationWeather;
}

// Clear Error Event
abstract class ClearError extends LocationEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}
