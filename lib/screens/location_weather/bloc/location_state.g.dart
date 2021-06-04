// GENERATED CODE - DO NOT MODIFY BY HAND

part of location_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocationState extends LocationState {
  @override
  final String error;
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final LocationWeatherModel? locationWeather;

  factory _$LocationState([void Function(LocationStateBuilder)? updates]) =>
      (new LocationStateBuilder()..update(updates)).build();

  _$LocationState._(
      {required this.error,
      required this.success,
      required this.isLoading,
      this.locationWeather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'LocationState', 'error');
    BuiltValueNullFieldError.checkNotNull(success, 'LocationState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'LocationState', 'isLoading');
  }

  @override
  LocationState rebuild(void Function(LocationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationStateBuilder toBuilder() => new LocationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationState &&
        error == other.error &&
        success == other.success &&
        isLoading == other.isLoading &&
        locationWeather == other.locationWeather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), success.hashCode), isLoading.hashCode),
        locationWeather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationState')
          ..add('error', error)
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('locationWeather', locationWeather))
        .toString();
  }
}

class LocationStateBuilder
    implements Builder<LocationState, LocationStateBuilder> {
  _$LocationState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  LocationWeatherModel? _locationWeather;
  LocationWeatherModel? get locationWeather => _$this._locationWeather;
  set locationWeather(LocationWeatherModel? locationWeather) =>
      _$this._locationWeather = locationWeather;

  LocationStateBuilder();

  LocationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _success = $v.success;
      _isLoading = $v.isLoading;
      _locationWeather = $v.locationWeather;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationState;
  }

  @override
  void update(void Function(LocationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationState build() {
    final _$result = _$v ??
        new _$LocationState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'LocationState', 'error'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'LocationState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'LocationState', 'isLoading'),
            locationWeather: locationWeather);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
