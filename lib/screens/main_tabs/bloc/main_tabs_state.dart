library main_tabs_state;

import 'package:built_value/built_value.dart';

part 'main_tabs_state.g.dart';

abstract class MainState implements Built<MainState, MainStateBuilder> {
  String get error;
  bool get success;
  bool get isLoading;
  double? get lat;
  double? get long;

  MainState._();

  factory MainState([
    updates(MainStateBuilder b),
  ]) = _$MainState;

  factory MainState.initail() {
    return MainState((b) => b
      ..error = ''
      ..success = false
      ..isLoading = false
      ..lat = null
      ..long = null);
  }
}
