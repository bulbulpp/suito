// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_rates_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetRatesParams {

 bool get forceRefresh;
/// Create a copy of GetRatesParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRatesParamsCopyWith<GetRatesParams> get copyWith => _$GetRatesParamsCopyWithImpl<GetRatesParams>(this as GetRatesParams, _$identity);

  /// Serializes this GetRatesParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRatesParams&&(identical(other.forceRefresh, forceRefresh) || other.forceRefresh == forceRefresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,forceRefresh);

@override
String toString() {
  return 'GetRatesParams(forceRefresh: $forceRefresh)';
}


}

/// @nodoc
abstract mixin class $GetRatesParamsCopyWith<$Res>  {
  factory $GetRatesParamsCopyWith(GetRatesParams value, $Res Function(GetRatesParams) _then) = _$GetRatesParamsCopyWithImpl;
@useResult
$Res call({
 bool forceRefresh
});




}
/// @nodoc
class _$GetRatesParamsCopyWithImpl<$Res>
    implements $GetRatesParamsCopyWith<$Res> {
  _$GetRatesParamsCopyWithImpl(this._self, this._then);

  final GetRatesParams _self;
  final $Res Function(GetRatesParams) _then;

/// Create a copy of GetRatesParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? forceRefresh = null,}) {
  return _then(_self.copyWith(
forceRefresh: null == forceRefresh ? _self.forceRefresh : forceRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetRatesParams].
extension GetRatesParamsPatterns on GetRatesParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetRatesParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRatesParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetRatesParams value)  $default,){
final _that = this;
switch (_that) {
case _GetRatesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetRatesParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetRatesParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool forceRefresh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRatesParams() when $default != null:
return $default(_that.forceRefresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool forceRefresh)  $default,) {final _that = this;
switch (_that) {
case _GetRatesParams():
return $default(_that.forceRefresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool forceRefresh)?  $default,) {final _that = this;
switch (_that) {
case _GetRatesParams() when $default != null:
return $default(_that.forceRefresh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetRatesParams implements GetRatesParams {
  const _GetRatesParams({this.forceRefresh = false});
  factory _GetRatesParams.fromJson(Map<String, dynamic> json) => _$GetRatesParamsFromJson(json);

@override@JsonKey() final  bool forceRefresh;

/// Create a copy of GetRatesParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRatesParamsCopyWith<_GetRatesParams> get copyWith => __$GetRatesParamsCopyWithImpl<_GetRatesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetRatesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRatesParams&&(identical(other.forceRefresh, forceRefresh) || other.forceRefresh == forceRefresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,forceRefresh);

@override
String toString() {
  return 'GetRatesParams(forceRefresh: $forceRefresh)';
}


}

/// @nodoc
abstract mixin class _$GetRatesParamsCopyWith<$Res> implements $GetRatesParamsCopyWith<$Res> {
  factory _$GetRatesParamsCopyWith(_GetRatesParams value, $Res Function(_GetRatesParams) _then) = __$GetRatesParamsCopyWithImpl;
@override @useResult
$Res call({
 bool forceRefresh
});




}
/// @nodoc
class __$GetRatesParamsCopyWithImpl<$Res>
    implements _$GetRatesParamsCopyWith<$Res> {
  __$GetRatesParamsCopyWithImpl(this._self, this._then);

  final _GetRatesParams _self;
  final $Res Function(_GetRatesParams) _then;

/// Create a copy of GetRatesParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? forceRefresh = null,}) {
  return _then(_GetRatesParams(
forceRefresh: null == forceRefresh ? _self.forceRefresh : forceRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GetRatesResult {

 List<ExchangeRate> get rates; bool get isFromCache;
/// Create a copy of GetRatesResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRatesResultCopyWith<GetRatesResult> get copyWith => _$GetRatesResultCopyWithImpl<GetRatesResult>(this as GetRatesResult, _$identity);

  /// Serializes this GetRatesResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRatesResult&&const DeepCollectionEquality().equals(other.rates, rates)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rates),isFromCache);

@override
String toString() {
  return 'GetRatesResult(rates: $rates, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $GetRatesResultCopyWith<$Res>  {
  factory $GetRatesResultCopyWith(GetRatesResult value, $Res Function(GetRatesResult) _then) = _$GetRatesResultCopyWithImpl;
@useResult
$Res call({
 List<ExchangeRate> rates, bool isFromCache
});




}
/// @nodoc
class _$GetRatesResultCopyWithImpl<$Res>
    implements $GetRatesResultCopyWith<$Res> {
  _$GetRatesResultCopyWithImpl(this._self, this._then);

  final GetRatesResult _self;
  final $Res Function(GetRatesResult) _then;

/// Create a copy of GetRatesResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rates = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
rates: null == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<ExchangeRate>,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetRatesResult].
extension GetRatesResultPatterns on GetRatesResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetRatesResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRatesResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetRatesResult value)  $default,){
final _that = this;
switch (_that) {
case _GetRatesResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetRatesResult value)?  $default,){
final _that = this;
switch (_that) {
case _GetRatesResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExchangeRate> rates,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRatesResult() when $default != null:
return $default(_that.rates,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExchangeRate> rates,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _GetRatesResult():
return $default(_that.rates,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExchangeRate> rates,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _GetRatesResult() when $default != null:
return $default(_that.rates,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetRatesResult implements GetRatesResult {
  const _GetRatesResult({required final  List<ExchangeRate> rates, required this.isFromCache}): _rates = rates;
  factory _GetRatesResult.fromJson(Map<String, dynamic> json) => _$GetRatesResultFromJson(json);

 final  List<ExchangeRate> _rates;
@override List<ExchangeRate> get rates {
  if (_rates is EqualUnmodifiableListView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rates);
}

@override final  bool isFromCache;

/// Create a copy of GetRatesResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRatesResultCopyWith<_GetRatesResult> get copyWith => __$GetRatesResultCopyWithImpl<_GetRatesResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetRatesResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRatesResult&&const DeepCollectionEquality().equals(other._rates, _rates)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rates),isFromCache);

@override
String toString() {
  return 'GetRatesResult(rates: $rates, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$GetRatesResultCopyWith<$Res> implements $GetRatesResultCopyWith<$Res> {
  factory _$GetRatesResultCopyWith(_GetRatesResult value, $Res Function(_GetRatesResult) _then) = __$GetRatesResultCopyWithImpl;
@override @useResult
$Res call({
 List<ExchangeRate> rates, bool isFromCache
});




}
/// @nodoc
class __$GetRatesResultCopyWithImpl<$Res>
    implements _$GetRatesResultCopyWith<$Res> {
  __$GetRatesResultCopyWithImpl(this._self, this._then);

  final _GetRatesResult _self;
  final $Res Function(_GetRatesResult) _then;

/// Create a copy of GetRatesResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rates = null,Object? isFromCache = null,}) {
  return _then(_GetRatesResult(
rates: null == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as List<ExchangeRate>,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
