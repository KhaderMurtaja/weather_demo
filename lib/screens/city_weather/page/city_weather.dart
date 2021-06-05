import 'package:flutter/material.dart';

class CityWeather extends StatefulWidget {
  const CityWeather({
    Key? key,
  }) : super(key: key);

  @override
  _CityWeatherState createState() => _CityWeatherState();
}

class _CityWeatherState extends State<CityWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'City Page',
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
