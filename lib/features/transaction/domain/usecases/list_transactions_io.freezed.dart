// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_transactions_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListTransactionsParams {

 DateTime? get from; DateTime? get to; TransactionType? get type; PaymentMethod? get paymentMethod; int? get limit;
/// Create a copy of ListTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListTransactionsParamsCopyWith<ListTransactionsParams> get copyWith => _$ListTransactionsParamsCopyWithImpl<ListTransactionsParams>(this as ListTransactionsParams, _$identity);

  /// Serializes this ListTransactionsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListTransactionsParams&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,type,paymentMethod,limit);

@override
String toString() {
  return 'ListTransactionsParams(from: $from, to: $to, type: $type, paymentMethod: $paymentMethod, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ListTransactionsParamsCopyWith<$Res>  {
  factory $ListTransactionsParamsCopyWith(ListTransactionsParams value, $Res Function(ListTransactionsParams) _then) = _$ListTransactionsParamsCopyWithImpl;
@useResult
$Res call({
 DateTime? from, DateTime? to, TransactionType? type, PaymentMethod? paymentMethod, int? limit
});




}
/// @nodoc
class _$ListTransactionsParamsCopyWithImpl<$Res>
    implements $ListTransactionsParamsCopyWith<$Res> {
  _$ListTransactionsParamsCopyWithImpl(this._self, this._then);

  final ListTransactionsParams _self;
  final $Res Function(ListTransactionsParams) _then;

/// Create a copy of ListTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,Object? type = freezed,Object? paymentMethod = freezed,Object? limit = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListTransactionsParams].
extension ListTransactionsParamsPatterns on ListTransactionsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListTransactionsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListTransactionsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListTransactionsParams value)  $default,){
final _that = this;
switch (_that) {
case _ListTransactionsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListTransactionsParams value)?  $default,){
final _that = this;
switch (_that) {
case _ListTransactionsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  TransactionType? type,  PaymentMethod? paymentMethod,  int? limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListTransactionsParams() when $default != null:
return $default(_that.from,_that.to,_that.type,_that.paymentMethod,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  TransactionType? type,  PaymentMethod? paymentMethod,  int? limit)  $default,) {final _that = this;
switch (_that) {
case _ListTransactionsParams():
return $default(_that.from,_that.to,_that.type,_that.paymentMethod,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? from,  DateTime? to,  TransactionType? type,  PaymentMethod? paymentMethod,  int? limit)?  $default,) {final _that = this;
switch (_that) {
case _ListTransactionsParams() when $default != null:
return $default(_that.from,_that.to,_that.type,_that.paymentMethod,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListTransactionsParams implements ListTransactionsParams {
  const _ListTransactionsParams({this.from, this.to, this.type, this.paymentMethod, this.limit});
  factory _ListTransactionsParams.fromJson(Map<String, dynamic> json) => _$ListTransactionsParamsFromJson(json);

@override final  DateTime? from;
@override final  DateTime? to;
@override final  TransactionType? type;
@override final  PaymentMethod? paymentMethod;
@override final  int? limit;

/// Create a copy of ListTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTransactionsParamsCopyWith<_ListTransactionsParams> get copyWith => __$ListTransactionsParamsCopyWithImpl<_ListTransactionsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListTransactionsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTransactionsParams&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,type,paymentMethod,limit);

@override
String toString() {
  return 'ListTransactionsParams(from: $from, to: $to, type: $type, paymentMethod: $paymentMethod, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ListTransactionsParamsCopyWith<$Res> implements $ListTransactionsParamsCopyWith<$Res> {
  factory _$ListTransactionsParamsCopyWith(_ListTransactionsParams value, $Res Function(_ListTransactionsParams) _then) = __$ListTransactionsParamsCopyWithImpl;
@override @useResult
$Res call({
 DateTime? from, DateTime? to, TransactionType? type, PaymentMethod? paymentMethod, int? limit
});




}
/// @nodoc
class __$ListTransactionsParamsCopyWithImpl<$Res>
    implements _$ListTransactionsParamsCopyWith<$Res> {
  __$ListTransactionsParamsCopyWithImpl(this._self, this._then);

  final _ListTransactionsParams _self;
  final $Res Function(_ListTransactionsParams) _then;

/// Create a copy of ListTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,Object? type = freezed,Object? paymentMethod = freezed,Object? limit = freezed,}) {
  return _then(_ListTransactionsParams(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ListTransactionsResult {

 List<Transaction> get items; int get totalCount;
/// Create a copy of ListTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListTransactionsResultCopyWith<ListTransactionsResult> get copyWith => _$ListTransactionsResultCopyWithImpl<ListTransactionsResult>(this as ListTransactionsResult, _$identity);

  /// Serializes this ListTransactionsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListTransactionsResult&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount);

@override
String toString() {
  return 'ListTransactionsResult(items: $items, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $ListTransactionsResultCopyWith<$Res>  {
  factory $ListTransactionsResultCopyWith(ListTransactionsResult value, $Res Function(ListTransactionsResult) _then) = _$ListTransactionsResultCopyWithImpl;
@useResult
$Res call({
 List<Transaction> items, int totalCount
});




}
/// @nodoc
class _$ListTransactionsResultCopyWithImpl<$Res>
    implements $ListTransactionsResultCopyWith<$Res> {
  _$ListTransactionsResultCopyWithImpl(this._self, this._then);

  final ListTransactionsResult _self;
  final $Res Function(ListTransactionsResult) _then;

/// Create a copy of ListTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Transaction>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ListTransactionsResult].
extension ListTransactionsResultPatterns on ListTransactionsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListTransactionsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListTransactionsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListTransactionsResult value)  $default,){
final _that = this;
switch (_that) {
case _ListTransactionsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListTransactionsResult value)?  $default,){
final _that = this;
switch (_that) {
case _ListTransactionsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Transaction> items,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListTransactionsResult() when $default != null:
return $default(_that.items,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Transaction> items,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _ListTransactionsResult():
return $default(_that.items,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Transaction> items,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _ListTransactionsResult() when $default != null:
return $default(_that.items,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListTransactionsResult implements ListTransactionsResult {
  const _ListTransactionsResult({required final  List<Transaction> items, required this.totalCount}): _items = items;
  factory _ListTransactionsResult.fromJson(Map<String, dynamic> json) => _$ListTransactionsResultFromJson(json);

 final  List<Transaction> _items;
@override List<Transaction> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalCount;

/// Create a copy of ListTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTransactionsResultCopyWith<_ListTransactionsResult> get copyWith => __$ListTransactionsResultCopyWithImpl<_ListTransactionsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListTransactionsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTransactionsResult&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount);

@override
String toString() {
  return 'ListTransactionsResult(items: $items, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$ListTransactionsResultCopyWith<$Res> implements $ListTransactionsResultCopyWith<$Res> {
  factory _$ListTransactionsResultCopyWith(_ListTransactionsResult value, $Res Function(_ListTransactionsResult) _then) = __$ListTransactionsResultCopyWithImpl;
@override @useResult
$Res call({
 List<Transaction> items, int totalCount
});




}
/// @nodoc
class __$ListTransactionsResultCopyWithImpl<$Res>
    implements _$ListTransactionsResultCopyWith<$Res> {
  __$ListTransactionsResultCopyWithImpl(this._self, this._then);

  final _ListTransactionsResult _self;
  final $Res Function(_ListTransactionsResult) _then;

/// Create a copy of ListTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,}) {
  return _then(_ListTransactionsResult(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Transaction>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
