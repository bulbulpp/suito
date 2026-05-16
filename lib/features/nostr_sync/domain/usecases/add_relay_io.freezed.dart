// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_relay_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddRelayParams {

 String get url; String? get displayName;
/// Create a copy of AddRelayParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRelayParamsCopyWith<AddRelayParams> get copyWith => _$AddRelayParamsCopyWithImpl<AddRelayParams>(this as AddRelayParams, _$identity);

  /// Serializes this AddRelayParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRelayParams&&(identical(other.url, url) || other.url == url)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,displayName);

@override
String toString() {
  return 'AddRelayParams(url: $url, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $AddRelayParamsCopyWith<$Res>  {
  factory $AddRelayParamsCopyWith(AddRelayParams value, $Res Function(AddRelayParams) _then) = _$AddRelayParamsCopyWithImpl;
@useResult
$Res call({
 String url, String? displayName
});




}
/// @nodoc
class _$AddRelayParamsCopyWithImpl<$Res>
    implements $AddRelayParamsCopyWith<$Res> {
  _$AddRelayParamsCopyWithImpl(this._self, this._then);

  final AddRelayParams _self;
  final $Res Function(AddRelayParams) _then;

/// Create a copy of AddRelayParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddRelayParams].
extension AddRelayParamsPatterns on AddRelayParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddRelayParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddRelayParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddRelayParams value)  $default,){
final _that = this;
switch (_that) {
case _AddRelayParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddRelayParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddRelayParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddRelayParams() when $default != null:
return $default(_that.url,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _AddRelayParams():
return $default(_that.url,_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _AddRelayParams() when $default != null:
return $default(_that.url,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddRelayParams implements AddRelayParams {
  const _AddRelayParams({required this.url, this.displayName});
  factory _AddRelayParams.fromJson(Map<String, dynamic> json) => _$AddRelayParamsFromJson(json);

@override final  String url;
@override final  String? displayName;

/// Create a copy of AddRelayParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRelayParamsCopyWith<_AddRelayParams> get copyWith => __$AddRelayParamsCopyWithImpl<_AddRelayParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddRelayParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRelayParams&&(identical(other.url, url) || other.url == url)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,displayName);

@override
String toString() {
  return 'AddRelayParams(url: $url, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$AddRelayParamsCopyWith<$Res> implements $AddRelayParamsCopyWith<$Res> {
  factory _$AddRelayParamsCopyWith(_AddRelayParams value, $Res Function(_AddRelayParams) _then) = __$AddRelayParamsCopyWithImpl;
@override @useResult
$Res call({
 String url, String? displayName
});




}
/// @nodoc
class __$AddRelayParamsCopyWithImpl<$Res>
    implements _$AddRelayParamsCopyWith<$Res> {
  __$AddRelayParamsCopyWithImpl(this._self, this._then);

  final _AddRelayParams _self;
  final $Res Function(_AddRelayParams) _then;

/// Create a copy of AddRelayParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? displayName = freezed,}) {
  return _then(_AddRelayParams(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AddRelayResult {

 RelayInfo get relay;
/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRelayResultCopyWith<AddRelayResult> get copyWith => _$AddRelayResultCopyWithImpl<AddRelayResult>(this as AddRelayResult, _$identity);

  /// Serializes this AddRelayResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRelayResult&&(identical(other.relay, relay) || other.relay == relay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay);

@override
String toString() {
  return 'AddRelayResult(relay: $relay)';
}


}

/// @nodoc
abstract mixin class $AddRelayResultCopyWith<$Res>  {
  factory $AddRelayResultCopyWith(AddRelayResult value, $Res Function(AddRelayResult) _then) = _$AddRelayResultCopyWithImpl;
@useResult
$Res call({
 RelayInfo relay
});


$RelayInfoCopyWith<$Res> get relay;

}
/// @nodoc
class _$AddRelayResultCopyWithImpl<$Res>
    implements $AddRelayResultCopyWith<$Res> {
  _$AddRelayResultCopyWithImpl(this._self, this._then);

  final AddRelayResult _self;
  final $Res Function(AddRelayResult) _then;

/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relay = null,}) {
  return _then(_self.copyWith(
relay: null == relay ? _self.relay : relay // ignore: cast_nullable_to_non_nullable
as RelayInfo,
  ));
}
/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelayInfoCopyWith<$Res> get relay {
  
  return $RelayInfoCopyWith<$Res>(_self.relay, (value) {
    return _then(_self.copyWith(relay: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddRelayResult].
extension AddRelayResultPatterns on AddRelayResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddRelayResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddRelayResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddRelayResult value)  $default,){
final _that = this;
switch (_that) {
case _AddRelayResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddRelayResult value)?  $default,){
final _that = this;
switch (_that) {
case _AddRelayResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RelayInfo relay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddRelayResult() when $default != null:
return $default(_that.relay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RelayInfo relay)  $default,) {final _that = this;
switch (_that) {
case _AddRelayResult():
return $default(_that.relay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RelayInfo relay)?  $default,) {final _that = this;
switch (_that) {
case _AddRelayResult() when $default != null:
return $default(_that.relay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddRelayResult implements AddRelayResult {
  const _AddRelayResult({required this.relay});
  factory _AddRelayResult.fromJson(Map<String, dynamic> json) => _$AddRelayResultFromJson(json);

@override final  RelayInfo relay;

/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRelayResultCopyWith<_AddRelayResult> get copyWith => __$AddRelayResultCopyWithImpl<_AddRelayResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddRelayResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRelayResult&&(identical(other.relay, relay) || other.relay == relay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,relay);

@override
String toString() {
  return 'AddRelayResult(relay: $relay)';
}


}

/// @nodoc
abstract mixin class _$AddRelayResultCopyWith<$Res> implements $AddRelayResultCopyWith<$Res> {
  factory _$AddRelayResultCopyWith(_AddRelayResult value, $Res Function(_AddRelayResult) _then) = __$AddRelayResultCopyWithImpl;
@override @useResult
$Res call({
 RelayInfo relay
});


@override $RelayInfoCopyWith<$Res> get relay;

}
/// @nodoc
class __$AddRelayResultCopyWithImpl<$Res>
    implements _$AddRelayResultCopyWith<$Res> {
  __$AddRelayResultCopyWithImpl(this._self, this._then);

  final _AddRelayResult _self;
  final $Res Function(_AddRelayResult) _then;

/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relay = null,}) {
  return _then(_AddRelayResult(
relay: null == relay ? _self.relay : relay // ignore: cast_nullable_to_non_nullable
as RelayInfo,
  ));
}

/// Create a copy of AddRelayResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelayInfoCopyWith<$Res> get relay {
  
  return $RelayInfoCopyWith<$Res>(_self.relay, (value) {
    return _then(_self.copyWith(relay: value));
  });
}
}

// dart format on
