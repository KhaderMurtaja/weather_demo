library main_tabs_event;

import 'package:built_value/built_value.dart';

part 'main_tabs_event.g.dart';

abstract class MainEvent {}

// Get Lat Long Event
abstract class GetLatLong extends MainEvent
    implements Built<GetLatLong, GetLatLongBuilder> {
  GetLatLong._();

  factory GetLatLong([
    updates(GetLatLongBuilder b),
  ]) = _$GetLatLong;
}

// Clear Error Event
abstract class ClearError extends MainEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

// Change State Event
abstract class ChangeState extends MainEvent
    implements Built<ChangeState, ChangeStateBuilder> {
  ChangeState._();

  factory ChangeState([
    updates(ChangeStateBuilder b),
  ]) = _$ChangeState;
}
