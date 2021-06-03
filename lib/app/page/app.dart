import 'package:flutter/material.dart';
import 'package:weather_demo/screens/location_weather/page/location_weather.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationWeather(),
    );
  }
}
