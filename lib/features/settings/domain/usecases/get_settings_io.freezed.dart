// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_settings_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSettingsParams {



  /// Serializes this GetSettingsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSettingsParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSettingsParams()';
}


}

/// @nodoc
class $GetSettingsParamsCopyWith<$Res>  {
$GetSettingsParamsCopyWith(GetSettingsParams _, $Res Function(GetSettingsParams) __);
}


/// Adds pattern-matching-related methods to [GetSettingsParams].
extension GetSettingsParamsPatterns on GetSettingsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSettingsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSettingsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSettingsParams value)  $default,){
final _that = this;
switch (_that) {
case _GetSettingsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSettingsParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetSettingsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSettingsParams() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _GetSettingsParams():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _GetSettingsParams() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSettingsParams implements GetSettingsParams {
  const _GetSettingsParams();
  factory _GetSettingsParams.fromJson(Map<String, dynamic> json) => _$GetSettingsParamsFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$GetSettingsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSettingsParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSettingsParams()';
}


}





/// @nodoc
mixin _$GetSettingsResult {

 AppSettings get settings;
/// Create a copy of GetSettingsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSettingsResultCopyWith<GetSettingsResult> get copyWith => _$GetSettingsResultCopyWithImpl<GetSettingsResult>(this as GetSettingsResult, _$identity);

  /// Serializes this GetSettingsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSettingsResult&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'GetSettingsResult(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $GetSettingsResultCopyWith<$Res>  {
  factory $GetSettingsResultCopyWith(GetSettingsResult value, $Res Function(GetSettingsResult) _then) = _$GetSettingsResultCopyWithImpl;
@useResult
$Res call({
 AppSettings settings
});


$AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$GetSettingsResultCopyWithImpl<$Res>
    implements $GetSettingsResultCopyWith<$Res> {
  _$GetSettingsResultCopyWithImpl(this._self, this._then);

  final GetSettingsResult _self;
  final $Res Function(GetSettingsResult) _then;

/// Create a copy of GetSettingsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,}) {
  return _then(_self.copyWith(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}
/// Create a copy of GetSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetSettingsResult].
extension GetSettingsResultPatterns on GetSettingsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSettingsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSettingsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSettingsResult value)  $default,){
final _that = this;
switch (_that) {
case _GetSettingsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSettingsResult value)?  $default,){
final _that = this;
switch (_that) {
case _GetSettingsResult() when $default != null:
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
case _GetSettingsResult() when $default != null:
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
case _GetSettingsResult():
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
case _GetSettingsResult() when $default != null:
return $default(_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSettingsResult implements GetSettingsResult {
  const _GetSettingsResult({required this.settings});
  factory _GetSettingsResult.fromJson(Map<String, dynamic> json) => _$GetSettingsResultFromJson(json);

@override final  AppSettings settings;

/// Create a copy of GetSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSettingsResultCopyWith<_GetSettingsResult> get copyWith => __$GetSettingsResultCopyWithImpl<_GetSettingsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSettingsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSettingsResult&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'GetSettingsResult(settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$GetSettingsResultCopyWith<$Res> implements $GetSettingsResultCopyWith<$Res> {
  factory _$GetSettingsResultCopyWith(_GetSettingsResult value, $Res Function(_GetSettingsResult) _then) = __$GetSettingsResultCopyWithImpl;
@override @useResult
$Res call({
 AppSettings settings
});


@override $AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$GetSettingsResultCopyWithImpl<$Res>
    implements _$GetSettingsResultCopyWith<$Res> {
  __$GetSettingsResultCopyWithImpl(this._self, this._then);

  final _GetSettingsResult _self;
  final $Res Function(_GetSettingsResult) _then;

/// Create a copy of GetSettingsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(_GetSettingsResult(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of GetSettingsResult
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
