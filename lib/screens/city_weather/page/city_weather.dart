import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_demo/injection.dart';
import 'package:weather_demo/screens/city_weather/bloc/city_weather_bloc.dart';
import 'package:weather_demo/screens/city_weather/bloc/city_weather_state.dart';

class CityWeather extends StatefulWidget {
  const CityWeather({
    Key? key,
  }) : super(key: key);

  @override
  _CityWeatherState createState() => _CityWeatherState();
}

class _CityWeatherState extends State<CityWeather> {
  final _bloc = sl<CityWeatherBloc>();
  var _cityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, CityWeatherState state) {
          return Scaffold(
            backgroundColor: Color(0xFF223644),
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(
                    12.0,
                    25.0,
                    12.0,
                    20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF223644),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          controller: _cityName,
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.start,
                          onChanged: (value) {},
                          cursorColor: Colors.blue[200],
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 18.0,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "City Name",
                            hintStyle: TextStyle(
                              color: Colors.blue[200],
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.blue[200],
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue[200],
                              ),
                            ),
                            fillColor: Color(0xFF223644),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image/weather.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
