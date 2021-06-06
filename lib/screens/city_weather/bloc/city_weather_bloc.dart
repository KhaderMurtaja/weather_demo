import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_demo/data/repository/irepository.dart';
import 'package:weather_demo/screens/city_weather/bloc/city_weather_event.dart';
import 'package:weather_demo/screens/city_weather/bloc/city_weather_state.dart';

class CityWeatherBloc extends Bloc<CityWeatherEvent, CityWeatherState> {
  IRepository _iRepository;

  CityWeatherBloc(this._iRepository) : super(CityWeatherState.initail());

  @override
  Stream<CityWeatherState> mapEventToState(
    CityWeatherEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is ChangeState) {
      yield state.rebuild((b) => b..success = false);
    }
    if (event is GetCityWeather) {
      try {
        yield state.rebuild((b) => b
          ..error = ''
          ..isLoading = true
          ..success = false
          ..cityWeather = null);
        final cityWeatherData = await _iRepository.getCityWeather(
          event.cityName,
        );
        yield state.rebuild((b) => b
          ..error = ''
          ..isLoading = false
          ..success = true
          ..cityWeather = cityWeatherData);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'Cannot find city!'
          ..isLoading = false
          ..success = false
          ..cityWeather = null);
      }
    }
  }
}
