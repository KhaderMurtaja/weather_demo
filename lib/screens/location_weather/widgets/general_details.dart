import 'package:flutter/material.dart';

class GeneralDetails extends StatelessWidget {
  const GeneralDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Temperature Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Temperature',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 0.5,
                  color: Colors.white24,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                ),
              ),
              Text(
                'Celcius',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blue[200],
                ),
              ),
            ],
          ),
          // Wind Speed Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Wind Speed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 0.5,
                  color: Colors.white24,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                ),
              ),
              Text(
                'km/h',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blue[200],
                ),
              ),
            ],
          ),
          // Source Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Source',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  height: 0.5,
                  color: Colors.white24,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                ),
              ),
              Text(
                'openweathermap.org',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blue[200],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
