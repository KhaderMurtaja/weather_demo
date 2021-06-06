// GENERATED CODE - DO NOT MODIFY BY HAND

part of city_weather_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCityWeather extends GetCityWeather {
  @override
  final String cityName;

  factory _$GetCityWeather([void Function(GetCityWeatherBuilder)? updates]) =>
      (new GetCityWeatherBuilder()..update(updates)).build();

  _$GetCityWeather._({required this.cityName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cityName, 'GetCityWeather', 'cityName');
  }

  @override
  GetCityWeather rebuild(void Function(GetCityWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCityWeatherBuilder toBuilder() =>
      new GetCityWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCityWeather && cityName == other.cityName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cityName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCityWeather')
          ..add('cityName', cityName))
        .toString();
  }
}

class GetCityWeatherBuilder
    implements Builder<GetCityWeather, GetCityWeatherBuilder> {
  _$GetCityWeather? _$v;

  String? _cityName;
  String? get cityName => _$this._cityName;
  set cityName(String? cityName) => _$this._cityName = cityName;

  GetCityWeatherBuilder();

  GetCityWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cityName = $v.cityName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCityWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCityWeather;
  }

  @override
  void update(void Function(GetCityWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCityWeather build() {
    final _$result = _$v ??
        new _$GetCityWeather._(
            cityName: BuiltValueNullFieldError.checkNotNull(
                cityName, 'GetCityWeather', 'cityName'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder)? updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError? _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeState extends ChangeState {
  factory _$ChangeState([void Function(ChangeStateBuilder)? updates]) =>
      (new ChangeStateBuilder()..update(updates)).build();

  _$ChangeState._() : super._();

  @override
  ChangeState rebuild(void Function(ChangeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStateBuilder toBuilder() => new ChangeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeState;
  }

  @override
  int get hashCode {
    return 404821806;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ChangeState').toString();
  }
}

class ChangeStateBuilder implements Builder<ChangeState, ChangeStateBuilder> {
  _$ChangeState? _$v;

  ChangeStateBuilder();

  @override
  void replace(ChangeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeState;
  }

  @override
  void update(void Function(ChangeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeState build() {
    final _$result = _$v ?? new _$ChangeState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
