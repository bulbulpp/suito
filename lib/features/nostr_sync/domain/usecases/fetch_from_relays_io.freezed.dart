// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_from_relays_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FetchFromRelaysParams {

/// [since] 以降に作成されたイベントだけ取得（null = すべて）。
 DateTime? get since;
/// Create a copy of FetchFromRelaysParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchFromRelaysParamsCopyWith<FetchFromRelaysParams> get copyWith => _$FetchFromRelaysParamsCopyWithImpl<FetchFromRelaysParams>(this as FetchFromRelaysParams, _$identity);

  /// Serializes this FetchFromRelaysParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFromRelaysParams&&(identical(other.since, since) || other.since == since));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,since);

@override
String toString() {
  return 'FetchFromRelaysParams(since: $since)';
}


}

/// @nodoc
abstract mixin class $FetchFromRelaysParamsCopyWith<$Res>  {
  factory $FetchFromRelaysParamsCopyWith(FetchFromRelaysParams value, $Res Function(FetchFromRelaysParams) _then) = _$FetchFromRelaysParamsCopyWithImpl;
@useResult
$Res call({
 DateTime? since
});




}
/// @nodoc
class _$FetchFromRelaysParamsCopyWithImpl<$Res>
    implements $FetchFromRelaysParamsCopyWith<$Res> {
  _$FetchFromRelaysParamsCopyWithImpl(this._self, this._then);

  final FetchFromRelaysParams _self;
  final $Res Function(FetchFromRelaysParams) _then;

/// Create a copy of FetchFromRelaysParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? since = freezed,}) {
  return _then(_self.copyWith(
since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FetchFromRelaysParams].
extension FetchFromRelaysParamsPatterns on FetchFromRelaysParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FetchFromRelaysParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchFromRelaysParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FetchFromRelaysParams value)  $default,){
final _that = this;
switch (_that) {
case _FetchFromRelaysParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FetchFromRelaysParams value)?  $default,){
final _that = this;
switch (_that) {
case _FetchFromRelaysParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? since)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchFromRelaysParams() when $default != null:
return $default(_that.since);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? since)  $default,) {final _that = this;
switch (_that) {
case _FetchFromRelaysParams():
return $default(_that.since);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? since)?  $default,) {final _that = this;
switch (_that) {
case _FetchFromRelaysParams() when $default != null:
return $default(_that.since);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FetchFromRelaysParams implements FetchFromRelaysParams {
  const _FetchFromRelaysParams({this.since});
  factory _FetchFromRelaysParams.fromJson(Map<String, dynamic> json) => _$FetchFromRelaysParamsFromJson(json);

/// [since] 以降に作成されたイベントだけ取得（null = すべて）。
@override final  DateTime? since;

/// Create a copy of FetchFromRelaysParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchFromRelaysParamsCopyWith<_FetchFromRelaysParams> get copyWith => __$FetchFromRelaysParamsCopyWithImpl<_FetchFromRelaysParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FetchFromRelaysParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchFromRelaysParams&&(identical(other.since, since) || other.since == since));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,since);

@override
String toString() {
  return 'FetchFromRelaysParams(since: $since)';
}


}

/// @nodoc
abstract mixin class _$FetchFromRelaysParamsCopyWith<$Res> implements $FetchFromRelaysParamsCopyWith<$Res> {
  factory _$FetchFromRelaysParamsCopyWith(_FetchFromRelaysParams value, $Res Function(_FetchFromRelaysParams) _then) = __$FetchFromRelaysParamsCopyWithImpl;
@override @useResult
$Res call({
 DateTime? since
});




}
/// @nodoc
class __$FetchFromRelaysParamsCopyWithImpl<$Res>
    implements _$FetchFromRelaysParamsCopyWith<$Res> {
  __$FetchFromRelaysParamsCopyWithImpl(this._self, this._then);

  final _FetchFromRelaysParams _self;
  final $Res Function(_FetchFromRelaysParams) _then;

/// Create a copy of FetchFromRelaysParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? since = freezed,}) {
  return _then(_FetchFromRelaysParams(
since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$FetchFromRelaysResult {

 List<Transaction> get transactions; DateTime get fetchedAt;
/// Create a copy of FetchFromRelaysResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchFromRelaysResultCopyWith<FetchFromRelaysResult> get copyWith => _$FetchFromRelaysResultCopyWithImpl<FetchFromRelaysResult>(this as FetchFromRelaysResult, _$identity);

  /// Serializes this FetchFromRelaysResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFromRelaysResult&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions),fetchedAt);

@override
String toString() {
  return 'FetchFromRelaysResult(transactions: $transactions, fetchedAt: $fetchedAt)';
}


}

/// @nodoc
abstract mixin class $FetchFromRelaysResultCopyWith<$Res>  {
  factory $FetchFromRelaysResultCopyWith(FetchFromRelaysResult value, $Res Function(FetchFromRelaysResult) _then) = _$FetchFromRelaysResultCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions, DateTime fetchedAt
});




}
/// @nodoc
class _$FetchFromRelaysResultCopyWithImpl<$Res>
    implements $FetchFromRelaysResultCopyWith<$Res> {
  _$FetchFromRelaysResultCopyWithImpl(this._self, this._then);

  final FetchFromRelaysResult _self;
  final $Res Function(FetchFromRelaysResult) _then;

/// Create a copy of FetchFromRelaysResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,Object? fetchedAt = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FetchFromRelaysResult].
extension FetchFromRelaysResultPatterns on FetchFromRelaysResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FetchFromRelaysResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchFromRelaysResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FetchFromRelaysResult value)  $default,){
final _that = this;
switch (_that) {
case _FetchFromRelaysResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FetchFromRelaysResult value)?  $default,){
final _that = this;
switch (_that) {
case _FetchFromRelaysResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Transaction> transactions,  DateTime fetchedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchFromRelaysResult() when $default != null:
return $default(_that.transactions,_that.fetchedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Transaction> transactions,  DateTime fetchedAt)  $default,) {final _that = this;
switch (_that) {
case _FetchFromRelaysResult():
return $default(_that.transactions,_that.fetchedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Transaction> transactions,  DateTime fetchedAt)?  $default,) {final _that = this;
switch (_that) {
case _FetchFromRelaysResult() when $default != null:
return $default(_that.transactions,_that.fetchedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FetchFromRelaysResult implements FetchFromRelaysResult {
  const _FetchFromRelaysResult({required final  List<Transaction> transactions, required this.fetchedAt}): _transactions = transactions;
  factory _FetchFromRelaysResult.fromJson(Map<String, dynamic> json) => _$FetchFromRelaysResultFromJson(json);

 final  List<Transaction> _transactions;
@override List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override final  DateTime fetchedAt;

/// Create a copy of FetchFromRelaysResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchFromRelaysResultCopyWith<_FetchFromRelaysResult> get copyWith => __$FetchFromRelaysResultCopyWithImpl<_FetchFromRelaysResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FetchFromRelaysResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchFromRelaysResult&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions),fetchedAt);

@override
String toString() {
  return 'FetchFromRelaysResult(transactions: $transactions, fetchedAt: $fetchedAt)';
}


}

/// @nodoc
abstract mixin class _$FetchFromRelaysResultCopyWith<$Res> implements $FetchFromRelaysResultCopyWith<$Res> {
  factory _$FetchFromRelaysResultCopyWith(_FetchFromRelaysResult value, $Res Function(_FetchFromRelaysResult) _then) = __$FetchFromRelaysResultCopyWithImpl;
@override @useResult
$Res call({
 List<Transaction> transactions, DateTime fetchedAt
});




}
/// @nodoc
class __$FetchFromRelaysResultCopyWithImpl<$Res>
    implements _$FetchFromRelaysResultCopyWith<$Res> {
  __$FetchFromRelaysResultCopyWithImpl(this._self, this._then);

  final _FetchFromRelaysResult _self;
  final $Res Function(_FetchFromRelaysResult) _then;

/// Create a copy of FetchFromRelaysResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,Object? fetchedAt = null,}) {
  return _then(_FetchFromRelaysResult(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
