import 'dart:convert';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/core/constant.dart';
import 'package:weather_demo/core/error.dart';
import 'package:weather_demo/data/http_helper/iIhttp_helper.dart';
import 'package:weather_demo/model/city_weather/city_weather_model.dart';
import 'package:weather_demo/model/location_weather/location_weather_model.dart';

class HttpHelper extends IHttpHelper {
  late Dio _dio;
  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(
      CookieManager(cookieJar),
    );
  }

  // Get Weather by City Name
  @override
  Future<CityWeatherModel> getCityWeather(
    String cityName,
  ) async {
    try {
      final response = await _dio.get(
        '?q=$cityName&appid=$BaseUrlApiKey&units=metric',
      );
      if (response.statusCode == 200) {
        var jsonDataObject = jsonDecode(response.data);
        CityWeatherModel mCityWeather =
            CityWeatherModel.fromJson(jsonDataObject);
        return mCityWeather;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  // Get Current Location
  @override
  Future<Position> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium,
      );
      return position;
    } catch (e) {
      throw NetworkException();
    }
  }

  // Get Weather by Lat and Long

  @override
  Future<LocationWeatherModel> getLocationWeather(
    double latitude, // 31.523724
    double longitude, // 34.4459185
  ) async {
    try {
      final response = await _dio.get(
        '?lat=$latitude&lon=$longitude&appid=$BaseUrlApiKey&units=metric',
      );
      if (response.statusCode == 200) {
        var jsonDataObject = jsonDecode(response.data);
        LocationWeatherModel mLocationWeahter =
            LocationWeatherModel.fromJson(jsonDataObject);
        return mLocationWeahter;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }
}
