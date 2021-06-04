import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_demo/core/constant.dart';
import 'package:weather_demo/data/http_helper/http_helper.dart';
import 'package:weather_demo/data/http_helper/iIhttp_helper.dart';
import 'package:weather_demo/data/repository/irepository.dart';
import 'package:weather_demo/data/repository/repository.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_bloc.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_state.dart';

GetIt sl = GetIt.instance;

Future initGetIt() async {
  sl.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: BaseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          "charset": "utf-8",
          "Accept-Charset": "utf-8"
        },
        responseType: ResponseType.plain,
      ),
    ),
  );

  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository());

  sl.registerFactory(() => LocationBloc(LocationState.initail()));
}
