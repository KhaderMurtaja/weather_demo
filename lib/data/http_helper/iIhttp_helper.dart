import 'package:weather_demo/model/city_weather/city_weather_model.dart';

abstract class IHttpHelper {
  Future<CityWeatherModel> getCityWeather(
    String cityName,
  );
}
