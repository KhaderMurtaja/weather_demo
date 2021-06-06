import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:weather_demo/injection.dart';
import 'package:weather_demo/screens/city_weather/page/city_weather.dart';
import 'package:weather_demo/screens/location_weather/page/location_weather.dart';
import 'package:weather_demo/screens/main_tabs/bloc/main_tabs_bloc.dart';
import 'package:weather_demo/screens/main_tabs/bloc/main_tabs_event.dart';
import 'package:weather_demo/screens/main_tabs/bloc/main_tabs_state.dart';
import 'package:weather_demo/screens/main_tabs/widgets/loader.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({
    Key? key,
  }) : super(key: key);

  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  final _bloc = sl<MainBloc>();
  int _currentIndex = 0;

  @override
  void initState() {
    _bloc.add(GetLatLong());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, MainState state) {
          error(state.error);
          return Scaffold(
            backgroundColor: Color(0xFF223644),
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                child: Builder(
                  builder: (context) {
                    switch (_currentIndex) {
                      case 0:
                        return (state.isLoading == true)
                            ? Loader()
                            : (state.lat == null || state.long == null)
                                ? Container()
                                : LocationWeather(
                                    lat: state.lat,
                                    long: state.long,
                                  );
                      case 1:
                        return CityWeather();
                      default:
                        return LocationWeather(
                          lat: state.lat,
                          long: state.long,
                        );
                    }
                  },
                ),
              ),
            ),
            bottomNavigationBar: BottomNavyBar(
              animationDuration: Duration(milliseconds: 500),
              selectedIndex: _currentIndex,
              backgroundColor: Colors.blue[900],
              itemCornerRadius: 24,
              onItemSelected: (id) => setState(() => _currentIndex = id),
              items: <BottomNavyBarItem>[
                // Home
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  activeColor: Colors.white,
                  inactiveColor: Color(0xFF869DA4),
                ),
                // Search
                BottomNavyBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Search"),
                  activeColor: Colors.white,
                  inactiveColor: Color(0xFF869DA4),
                ),
              ],
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
