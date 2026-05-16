// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_to_relays_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncToRelaysParams {

/// 強制全件同期するか（false なら lastSyncAt 以降の差分のみ）。
 bool get forceFullSync;
/// Create a copy of SyncToRelaysParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncToRelaysParamsCopyWith<SyncToRelaysParams> get copyWith => _$SyncToRelaysParamsCopyWithImpl<SyncToRelaysParams>(this as SyncToRelaysParams, _$identity);

  /// Serializes this SyncToRelaysParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncToRelaysParams&&(identical(other.forceFullSync, forceFullSync) || other.forceFullSync == forceFullSync));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,forceFullSync);

@override
String toString() {
  return 'SyncToRelaysParams(forceFullSync: $forceFullSync)';
}


}

/// @nodoc
abstract mixin class $SyncToRelaysParamsCopyWith<$Res>  {
  factory $SyncToRelaysParamsCopyWith(SyncToRelaysParams value, $Res Function(SyncToRelaysParams) _then) = _$SyncToRelaysParamsCopyWithImpl;
@useResult
$Res call({
 bool forceFullSync
});




}
/// @nodoc
class _$SyncToRelaysParamsCopyWithImpl<$Res>
    implements $SyncToRelaysParamsCopyWith<$Res> {
  _$SyncToRelaysParamsCopyWithImpl(this._self, this._then);

  final SyncToRelaysParams _self;
  final $Res Function(SyncToRelaysParams) _then;

/// Create a copy of SyncToRelaysParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? forceFullSync = null,}) {
  return _then(_self.copyWith(
forceFullSync: null == forceFullSync ? _self.forceFullSync : forceFullSync // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncToRelaysParams].
extension SyncToRelaysParamsPatterns on SyncToRelaysParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncToRelaysParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncToRelaysParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncToRelaysParams value)  $default,){
final _that = this;
switch (_that) {
case _SyncToRelaysParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncToRelaysParams value)?  $default,){
final _that = this;
switch (_that) {
case _SyncToRelaysParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool forceFullSync)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncToRelaysParams() when $default != null:
return $default(_that.forceFullSync);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool forceFullSync)  $default,) {final _that = this;
switch (_that) {
case _SyncToRelaysParams():
return $default(_that.forceFullSync);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool forceFullSync)?  $default,) {final _that = this;
switch (_that) {
case _SyncToRelaysParams() when $default != null:
return $default(_that.forceFullSync);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncToRelaysParams implements SyncToRelaysParams {
  const _SyncToRelaysParams({this.forceFullSync = false});
  factory _SyncToRelaysParams.fromJson(Map<String, dynamic> json) => _$SyncToRelaysParamsFromJson(json);

/// 強制全件同期するか（false なら lastSyncAt 以降の差分のみ）。
@override@JsonKey() final  bool forceFullSync;

/// Create a copy of SyncToRelaysParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncToRelaysParamsCopyWith<_SyncToRelaysParams> get copyWith => __$SyncToRelaysParamsCopyWithImpl<_SyncToRelaysParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncToRelaysParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncToRelaysParams&&(identical(other.forceFullSync, forceFullSync) || other.forceFullSync == forceFullSync));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,forceFullSync);

@override
String toString() {
  return 'SyncToRelaysParams(forceFullSync: $forceFullSync)';
}


}

/// @nodoc
abstract mixin class _$SyncToRelaysParamsCopyWith<$Res> implements $SyncToRelaysParamsCopyWith<$Res> {
  factory _$SyncToRelaysParamsCopyWith(_SyncToRelaysParams value, $Res Function(_SyncToRelaysParams) _then) = __$SyncToRelaysParamsCopyWithImpl;
@override @useResult
$Res call({
 bool forceFullSync
});




}
/// @nodoc
class __$SyncToRelaysParamsCopyWithImpl<$Res>
    implements _$SyncToRelaysParamsCopyWith<$Res> {
  __$SyncToRelaysParamsCopyWithImpl(this._self, this._then);

  final _SyncToRelaysParams _self;
  final $Res Function(_SyncToRelaysParams) _then;

/// Create a copy of SyncToRelaysParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? forceFullSync = null,}) {
  return _then(_SyncToRelaysParams(
forceFullSync: null == forceFullSync ? _self.forceFullSync : forceFullSync // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SyncToRelaysResult {

 int get pushedCount; DateTime get completedAt;
/// Create a copy of SyncToRelaysResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncToRelaysResultCopyWith<SyncToRelaysResult> get copyWith => _$SyncToRelaysResultCopyWithImpl<SyncToRelaysResult>(this as SyncToRelaysResult, _$identity);

  /// Serializes this SyncToRelaysResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncToRelaysResult&&(identical(other.pushedCount, pushedCount) || other.pushedCount == pushedCount)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pushedCount,completedAt);

@override
String toString() {
  return 'SyncToRelaysResult(pushedCount: $pushedCount, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $SyncToRelaysResultCopyWith<$Res>  {
  factory $SyncToRelaysResultCopyWith(SyncToRelaysResult value, $Res Function(SyncToRelaysResult) _then) = _$SyncToRelaysResultCopyWithImpl;
@useResult
$Res call({
 int pushedCount, DateTime completedAt
});




}
/// @nodoc
class _$SyncToRelaysResultCopyWithImpl<$Res>
    implements $SyncToRelaysResultCopyWith<$Res> {
  _$SyncToRelaysResultCopyWithImpl(this._self, this._then);

  final SyncToRelaysResult _self;
  final $Res Function(SyncToRelaysResult) _then;

/// Create a copy of SyncToRelaysResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pushedCount = null,Object? completedAt = null,}) {
  return _then(_self.copyWith(
pushedCount: null == pushedCount ? _self.pushedCount : pushedCount // ignore: cast_nullable_to_non_nullable
as int,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncToRelaysResult].
extension SyncToRelaysResultPatterns on SyncToRelaysResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncToRelaysResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncToRelaysResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncToRelaysResult value)  $default,){
final _that = this;
switch (_that) {
case _SyncToRelaysResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncToRelaysResult value)?  $default,){
final _that = this;
switch (_that) {
case _SyncToRelaysResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pushedCount,  DateTime completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncToRelaysResult() when $default != null:
return $default(_that.pushedCount,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pushedCount,  DateTime completedAt)  $default,) {final _that = this;
switch (_that) {
case _SyncToRelaysResult():
return $default(_that.pushedCount,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pushedCount,  DateTime completedAt)?  $default,) {final _that = this;
switch (_that) {
case _SyncToRelaysResult() when $default != null:
return $default(_that.pushedCount,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncToRelaysResult implements SyncToRelaysResult {
  const _SyncToRelaysResult({required this.pushedCount, required this.completedAt});
  factory _SyncToRelaysResult.fromJson(Map<String, dynamic> json) => _$SyncToRelaysResultFromJson(json);

@override final  int pushedCount;
@override final  DateTime completedAt;

/// Create a copy of SyncToRelaysResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncToRelaysResultCopyWith<_SyncToRelaysResult> get copyWith => __$SyncToRelaysResultCopyWithImpl<_SyncToRelaysResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncToRelaysResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncToRelaysResult&&(identical(other.pushedCount, pushedCount) || other.pushedCount == pushedCount)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pushedCount,completedAt);

@override
String toString() {
  return 'SyncToRelaysResult(pushedCount: $pushedCount, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$SyncToRelaysResultCopyWith<$Res> implements $SyncToRelaysResultCopyWith<$Res> {
  factory _$SyncToRelaysResultCopyWith(_SyncToRelaysResult value, $Res Function(_SyncToRelaysResult) _then) = __$SyncToRelaysResultCopyWithImpl;
@override @useResult
$Res call({
 int pushedCount, DateTime completedAt
});




}
/// @nodoc
class __$SyncToRelaysResultCopyWithImpl<$Res>
    implements _$SyncToRelaysResultCopyWith<$Res> {
  __$SyncToRelaysResultCopyWithImpl(this._self, this._then);

  final _SyncToRelaysResult _self;
  final $Res Function(_SyncToRelaysResult) _then;

/// Create a copy of SyncToRelaysResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pushedCount = null,Object? completedAt = null,}) {
  return _then(_SyncToRelaysResult(
pushedCount: null == pushedCount ? _self.pushedCount : pushedCount // ignore: cast_nullable_to_non_nullable
as int,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
