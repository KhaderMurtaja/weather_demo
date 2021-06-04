import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_demo/injection.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_bloc.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_event.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_state.dart';
import 'package:weather_demo/screens/location_weather/widgets/your_location_text.dart';

class LocationWeather extends StatefulWidget {
  const LocationWeather({
    Key? key,
  }) : super(key: key);

  @override
  _LocationWeatherState createState() => _LocationWeatherState();
}

class _LocationWeatherState extends State<LocationWeather> {
  final _bloc = sl<LocationBloc>();
  late double userLongitude;
  late double userLatitude;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, LocationState state) {
          error(state.error);
          return Scaffold(
            body: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF223644),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    YourLocationText(),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
        timeInSecForIosWeb: 2,
        msg: errorCode,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      _bloc.add(ClearError());
    }
  }

  getCurrentLocation() async {
    Position position;
    // ignore: unused_local_variable
    var error;
    try {
      position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      userLatitude = position.latitude;
      userLongitude = position.longitude;
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      }
    }
  }
}
