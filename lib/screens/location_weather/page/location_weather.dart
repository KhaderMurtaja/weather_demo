import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_demo/injection.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_bloc.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_event.dart';
import 'package:weather_demo/screens/location_weather/bloc/location_state.dart';
import 'package:weather_demo/screens/location_weather/widgets/city_country.dart';
import 'package:weather_demo/screens/location_weather/widgets/general_details.dart';
import 'package:weather_demo/screens/location_weather/widgets/main_desc.dart';
import 'package:weather_demo/screens/location_weather/widgets/more_info.dart';
import 'package:weather_demo/screens/location_weather/widgets/temp.dart';
import 'package:weather_demo/screens/location_weather/widgets/your_location_text.dart';

class LocationWeather extends StatefulWidget {
  final double? lat;
  final double? long;

  const LocationWeather({
    Key? key,
    required this.lat,
    required this.long,
  }) : super(key: key);

  @override
  _LocationWeatherState createState() => _LocationWeatherState();
}

class _LocationWeatherState extends State<LocationWeather> {
  final _bloc = sl<LocationBloc>();

  @override
  void initState() {
    _bloc.add(GetLocationWeather((b) => b
      ..lat = widget.lat
      ..long = widget.long));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, LocationState state) {
          error(state.error);
          return Scaffold(
            backgroundColor: Color(0xFF223644),
            body: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  top: 40.0,
                  bottom: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF223644),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        YourLocationText(),
                        CityCountry(
                          isLoading: state.isLoading,
                          city: (state.locationWeather == null ||
                                  state.locationWeather!.name == null)
                              ? ''
                              : state.locationWeather!.name,
                          country: (state.locationWeather == null ||
                                  state.locationWeather!.sys == null ||
                                  state.locationWeather!.sys!.country == null)
                              ? ''
                              : state.locationWeather!.sys!.country,
                        ),
                      ],
                    ),
                    // main description
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MainDesc(
                              main: (state.locationWeather == null ||
                                      state.locationWeather!.weather == null ||
                                      state.locationWeather!.weather![0].main ==
                                          null)
                                  ? ''
                                  : state.locationWeather!.weather![0].main,
                              isLoading: state.isLoading,
                            ),
                            Column(
                              children: [
                                Temp(
                                  isLoading: state.isLoading,
                                  temp: (state.locationWeather == null ||
                                          state.locationWeather!.main == null ||
                                          state.locationWeather!.main!.temp ==
                                              null)
                                      ? ''
                                      : state.locationWeather!.main!.temp
                                          .toString(),
                                ),
                                MoreInfo(
                                  isLoading: state.isLoading,
                                  windSpeed: (state.locationWeather == null ||
                                          state.locationWeather!.wind == null ||
                                          state.locationWeather!.wind!.speed ==
                                              null)
                                      ? ''
                                      : state.locationWeather!.wind!.speed
                                          .toString(),
                                  humidity: (state.locationWeather == null ||
                                          state.locationWeather!.main == null ||
                                          state.locationWeather!.main!
                                                  .humidity ==
                                              null)
                                      ? '°C'
                                      : state.locationWeather!.main!.humidity
                                          .toString(),
                                  pressure: (state.locationWeather == null ||
                                          state.locationWeather!.main == null ||
                                          state.locationWeather!.main!
                                                  .pressure ==
                                              null)
                                      ? '°C'
                                      : state.locationWeather!.main!.pressure
                                          .toString(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Main Temp
                    // General Details
                    GeneralDetails(),
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
}
