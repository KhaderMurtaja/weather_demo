import 'package:weather_demo/model/city_weather/city_weather_model.dart';
import 'package:weather_demo/model/location_weather/location_weather_model.dart';

abstract class IHttpHelper {
  Future<CityWeatherModel> getCityWeather(
    String cityName,
  );

  Future<LocationWeatherModel> getLocationWeather(
    double lat,
    double long,
  );
}
