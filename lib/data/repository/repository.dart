import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/data/http_helper/iIhttp_helper.dart';
import 'package:weather_demo/data/repository/irepository.dart';
import 'package:weather_demo/model/city_weather/city_weather_model.dart';
import 'package:weather_demo/model/location_weather/location_weather_model.dart';

class Repository implements IRepository {
  late IHttpHelper _iHttpHelper;

  @override
  Future<CityWeatherModel> getCityWeather(
    String cityName,
  ) async {
    final cityWeather = await _iHttpHelper.getCityWeather(
      cityName,
    );
    return cityWeather;
  }

  @override
  Future<LocationWeatherModel> getLocationWeather() async {
    Position position = await _iHttpHelper.getLocation();
    double lat = position.latitude;
    double long = position.longitude;

    final locationWeather = await _iHttpHelper.getLocationWeather(
      lat,
      long,
    );
    return locationWeather;
  }
}