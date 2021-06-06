// GENERATED CODE - DO NOT MODIFY BY HAND

part of city_weather_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CityWeatherState extends CityWeatherState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool success;
  @override
  final CityWeatherModel? cityWeather;

  factory _$CityWeatherState(
          [void Function(CityWeatherStateBuilder)? updates]) =>
      (new CityWeatherStateBuilder()..update(updates)).build();

  _$CityWeatherState._(
      {required this.error,
      required this.isLoading,
      required this.success,
      this.cityWeather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'CityWeatherState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CityWeatherState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        success, 'CityWeatherState', 'success');
  }

  @override
  CityWeatherState rebuild(void Function(CityWeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityWeatherStateBuilder toBuilder() =>
      new CityWeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityWeatherState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        cityWeather == other.cityWeather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode), success.hashCode),
        cityWeather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CityWeatherState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('cityWeather', cityWeather))
        .toString();
  }
}

class CityWeatherStateBuilder
    implements Builder<CityWeatherState, CityWeatherStateBuilder> {
  _$CityWeatherState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CityWeatherModel? _cityWeather;
  CityWeatherModel? get cityWeather => _$this._cityWeather;
  set cityWeather(CityWeatherModel? cityWeather) =>
      _$this._cityWeather = cityWeather;

  CityWeatherStateBuilder();

  CityWeatherStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _cityWeather = $v.cityWeather;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityWeatherState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CityWeatherState;
  }

  @override
  void update(void Function(CityWeatherStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CityWeatherState build() {
    final _$result = _$v ??
        new _$CityWeatherState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'CityWeatherState', 'error'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'CityWeatherState', 'isLoading'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'CityWeatherState', 'success'),
            cityWeather: cityWeather);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
