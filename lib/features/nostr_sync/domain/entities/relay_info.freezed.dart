// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelayInfo {

 String get url; bool get isEnabled; DateTime? get lastSyncAt; String? get displayName;
/// Create a copy of RelayInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelayInfoCopyWith<RelayInfo> get copyWith => _$RelayInfoCopyWithImpl<RelayInfo>(this as RelayInfo, _$identity);

  /// Serializes this RelayInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelayInfo&&(identical(other.url, url) || other.url == url)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,isEnabled,lastSyncAt,displayName);

@override
String toString() {
  return 'RelayInfo(url: $url, isEnabled: $isEnabled, lastSyncAt: $lastSyncAt, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RelayInfoCopyWith<$Res>  {
  factory $RelayInfoCopyWith(RelayInfo value, $Res Function(RelayInfo) _then) = _$RelayInfoCopyWithImpl;
@useResult
$Res call({
 String url, bool isEnabled, DateTime? lastSyncAt, String? displayName
});




}
/// @nodoc
class _$RelayInfoCopyWithImpl<$Res>
    implements $RelayInfoCopyWith<$Res> {
  _$RelayInfoCopyWithImpl(this._self, this._then);

  final RelayInfo _self;
  final $Res Function(RelayInfo) _then;

/// Create a copy of RelayInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? isEnabled = null,Object? lastSyncAt = freezed,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RelayInfo].
extension RelayInfoPatterns on RelayInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelayInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelayInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelayInfo value)  $default,){
final _that = this;
switch (_that) {
case _RelayInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelayInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RelayInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  bool isEnabled,  DateTime? lastSyncAt,  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelayInfo() when $default != null:
return $default(_that.url,_that.isEnabled,_that.lastSyncAt,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  bool isEnabled,  DateTime? lastSyncAt,  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _RelayInfo():
return $default(_that.url,_that.isEnabled,_that.lastSyncAt,_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  bool isEnabled,  DateTime? lastSyncAt,  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _RelayInfo() when $default != null:
return $default(_that.url,_that.isEnabled,_that.lastSyncAt,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelayInfo extends RelayInfo {
  const _RelayInfo({required this.url, required this.isEnabled, this.lastSyncAt, this.displayName}): super._();
  factory _RelayInfo.fromJson(Map<String, dynamic> json) => _$RelayInfoFromJson(json);

@override final  String url;
@override final  bool isEnabled;
@override final  DateTime? lastSyncAt;
@override final  String? displayName;

/// Create a copy of RelayInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelayInfoCopyWith<_RelayInfo> get copyWith => __$RelayInfoCopyWithImpl<_RelayInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelayInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelayInfo&&(identical(other.url, url) || other.url == url)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,isEnabled,lastSyncAt,displayName);

@override
String toString() {
  return 'RelayInfo(url: $url, isEnabled: $isEnabled, lastSyncAt: $lastSyncAt, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$RelayInfoCopyWith<$Res> implements $RelayInfoCopyWith<$Res> {
  factory _$RelayInfoCopyWith(_RelayInfo value, $Res Function(_RelayInfo) _then) = __$RelayInfoCopyWithImpl;
@override @useResult
$Res call({
 String url, bool isEnabled, DateTime? lastSyncAt, String? displayName
});




}
/// @nodoc
class __$RelayInfoCopyWithImpl<$Res>
    implements _$RelayInfoCopyWith<$Res> {
  __$RelayInfoCopyWithImpl(this._self, this._then);

  final _RelayInfo _self;
  final $Res Function(_RelayInfo) _then;

/// Create a copy of RelayInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? isEnabled = null,Object? lastSyncAt = freezed,Object? displayName = freezed,}) {
  return _then(_RelayInfo(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
