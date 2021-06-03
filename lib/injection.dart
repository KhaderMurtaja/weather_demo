import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_demo/core/constant.dart';

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
}
