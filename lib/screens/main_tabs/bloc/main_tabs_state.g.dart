// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_tabs_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MainState extends MainState {
  @override
  final String error;
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final double? lat;
  @override
  final double? long;

  factory _$MainState([void Function(MainStateBuilder)? updates]) =>
      (new MainStateBuilder()..update(updates)).build();

  _$MainState._(
      {required this.error,
      required this.success,
      required this.isLoading,
      this.lat,
      this.long})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'MainState', 'error');
    BuiltValueNullFieldError.checkNotNull(success, 'MainState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'MainState', 'isLoading');
  }

  @override
  MainState rebuild(void Function(MainStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainStateBuilder toBuilder() => new MainStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainState &&
        error == other.error &&
        success == other.success &&
        isLoading == other.isLoading &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, error.hashCode), success.hashCode),
                isLoading.hashCode),
            lat.hashCode),
        long.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainState')
          ..add('error', error)
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('lat', lat)
          ..add('long', long))
        .toString();
  }
}

class MainStateBuilder implements Builder<MainState, MainStateBuilder> {
  _$MainState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  MainStateBuilder();

  MainStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _success = $v.success;
      _isLoading = $v.isLoading;
      _lat = $v.lat;
      _long = $v.long;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainState;
  }

  @override
  void update(void Function(MainStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MainState build() {
    final _$result = _$v ??
        new _$MainState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'MainState', 'error'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'MainState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'MainState', 'isLoading'),
            lat: lat,
            long: long);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
