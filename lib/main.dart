import 'package:flutter/material.dart';
import 'package:weather_demo/app/page/app.dart';
import 'package:weather_demo/injection.dart';

Future<void> main() async {
  await initGetIt();
  runApp(App());
}
