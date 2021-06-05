// GENERATED CODE - DO NOT MODIFY BY HAND

part of location_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLocationWeather extends GetLocationWeather {
  @override
  final double? lat;
  @override
  final double? long;

  factory _$GetLocationWeather(
          [void Function(GetLocationWeatherBuilder)? updates]) =>
      (new GetLocationWeatherBuilder()..update(updates)).build();

  _$GetLocationWeather._({this.lat, this.long}) : super._();

  @override
  GetLocationWeather rebuild(
          void Function(GetLocationWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLocationWeatherBuilder toBuilder() =>
      new GetLocationWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLocationWeather &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lat.hashCode), long.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLocationWeather')
          ..add('lat', lat)
          ..add('long', long))
        .toString();
  }
}

class GetLocationWeatherBuilder
    implements Builder<GetLocationWeather, GetLocationWeatherBuilder> {
  _$GetLocationWeather? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  GetLocationWeatherBuilder();

  GetLocationWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _long = $v.long;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLocationWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLocationWeather;
  }

  @override
  void update(void Function(GetLocationWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLocationWeather build() {
    final _$result = _$v ?? new _$GetLocationWeather._(lat: lat, long: long);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
