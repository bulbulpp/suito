// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_settings_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSettingsParams {

 AppSettings get settings;
/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSettingsParamsCopyWith<UpdateSettingsParams> get copyWith => _$UpdateSettingsParamsCopyWithImpl<UpdateSettingsParams>(this as UpdateSettingsParams, _$identity);

  /// Serializes this UpdateSettingsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSettingsParams&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'UpdateSettingsParams(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $UpdateSettingsParamsCopyWith<$Res>  {
  factory $UpdateSettingsParamsCopyWith(UpdateSettingsParams value, $Res Function(UpdateSettingsParams) _then) = _$UpdateSettingsParamsCopyWithImpl;
@useResult
$Res call({
 AppSettings settings
});


$AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$UpdateSettingsParamsCopyWithImpl<$Res>
    implements $UpdateSettingsParamsCopyWith<$Res> {
  _$UpdateSettingsParamsCopyWithImpl(this._self, this._then);

  final UpdateSettingsParams _self;
  final $Res Function(UpdateSettingsParams) _then;

/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,}) {
  return _then(_self.copyWith(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}
/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateSettingsParams].
extension UpdateSettingsParamsPatterns on UpdateSettingsParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSettingsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSettingsParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSettingsParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSettingsParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSettingsParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSettingsParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppSettings settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSettingsParams() when $default != null:
return $default(_that.settings);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppSettings settings)  $default,) {final _that = this;
switch (_that) {
case _UpdateSettingsParams():
return $default(_that.settings);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppSettings settings)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSettingsParams() when $default != null:
return $default(_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSettingsParams implements UpdateSettingsParams {
  const _UpdateSettingsParams({required this.settings});
  factory _UpdateSettingsParams.fromJson(Map<String, dynamic> json) => _$UpdateSettingsParamsFromJson(json);

@override final  AppSettings settings;

/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSettingsParamsCopyWith<_UpdateSettingsParams> get copyWith => __$UpdateSettingsParamsCopyWithImpl<_UpdateSettingsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSettingsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSettingsParams&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'UpdateSettingsParams(settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$UpdateSettingsParamsCopyWith<$Res> implements $UpdateSettingsParamsCopyWith<$Res> {
  factory _$UpdateSettingsParamsCopyWith(_UpdateSettingsParams value, $Res Function(_UpdateSettingsParams) _then) = __$UpdateSettingsParamsCopyWithImpl;
@override @useResult
$Res call({
 AppSettings settings
});


@override $AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$UpdateSettingsParamsCopyWithImpl<$Res>
    implements _$UpdateSettingsParamsCopyWith<$Res> {
  __$UpdateSettingsParamsCopyWithImpl(this._self, this._then);

  final _UpdateSettingsParams _self;
  final $Res Function(_UpdateSettingsParams) _then;

/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(_UpdateSettingsParams(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of UpdateSettingsParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc
mixin _$UpdateSettingsResult {

 AppSettings get settings;
/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSettingsResultCopyWith<UpdateSettingsResult> get copyWith => _$UpdateSettingsResultCopyWithImpl<UpdateSettingsResult>(this as UpdateSettingsResult, _$identity);

  /// Serializes this UpdateSettingsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSettingsResult&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'UpdateSettingsResult(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $UpdateSettingsResultCopyWith<$Res>  {
  factory $UpdateSettingsResultCopyWith(UpdateSettingsResult value, $Res Function(UpdateSettingsResult) _then) = _$UpdateSettingsResultCopyWithImpl;
@useResult
$Res call({
 AppSettings settings
});


$AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$UpdateSettingsResultCopyWithImpl<$Res>
    implements $UpdateSettingsResultCopyWith<$Res> {
  _$UpdateSettingsResultCopyWithImpl(this._self, this._then);

  final UpdateSettingsResult _self;
  final $Res Function(UpdateSettingsResult) _then;

/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,}) {
  return _then(_self.copyWith(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}
/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateSettingsResult].
extension UpdateSettingsResultPatterns on UpdateSettingsResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSettingsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSettingsResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSettingsResult value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSettingsResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSettingsResult value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSettingsResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppSettings settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSettingsResult() when $default != null:
return $default(_that.settings);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppSettings settings)  $default,) {final _that = this;
switch (_that) {
case _UpdateSettingsResult():
return $default(_that.settings);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppSettings settings)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSettingsResult() when $default != null:
return $default(_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSettingsResult implements UpdateSettingsResult {
  const _UpdateSettingsResult({required this.settings});
  factory _UpdateSettingsResult.fromJson(Map<String, dynamic> json) => _$UpdateSettingsResultFromJson(json);

@override final  AppSettings settings;

/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSettingsResultCopyWith<_UpdateSettingsResult> get copyWith => __$UpdateSettingsResultCopyWithImpl<_UpdateSettingsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSettingsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSettingsResult&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'UpdateSettingsResult(settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$UpdateSettingsResultCopyWith<$Res> implements $UpdateSettingsResultCopyWith<$Res> {
  factory _$UpdateSettingsResultCopyWith(_UpdateSettingsResult value, $Res Function(_UpdateSettingsResult) _then) = __$UpdateSettingsResultCopyWithImpl;
@override @useResult
$Res call({
 AppSettings settings
});


@override $AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$UpdateSettingsResultCopyWithImpl<$Res>
    implements _$UpdateSettingsResultCopyWith<$Res> {
  __$UpdateSettingsResultCopyWithImpl(this._self, this._then);

  final _UpdateSettingsResult _self;
  final $Res Function(_UpdateSettingsResult) _then;

/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(_UpdateSettingsResult(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of UpdateSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
