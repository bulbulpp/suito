// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bitcoin_record_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateBitcoinRecordParams {

 int get satAmount; CategoryId get categoryId; DateTime get occurredAt; String? get memo;
/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBitcoinRecordParamsCopyWith<CreateBitcoinRecordParams> get copyWith => _$CreateBitcoinRecordParamsCopyWithImpl<CreateBitcoinRecordParams>(this as CreateBitcoinRecordParams, _$identity);

  /// Serializes this CreateBitcoinRecordParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBitcoinRecordParams&&(identical(other.satAmount, satAmount) || other.satAmount == satAmount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.memo, memo) || other.memo == memo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,satAmount,categoryId,occurredAt,memo);

@override
String toString() {
  return 'CreateBitcoinRecordParams(satAmount: $satAmount, categoryId: $categoryId, occurredAt: $occurredAt, memo: $memo)';
}


}

/// @nodoc
abstract mixin class $CreateBitcoinRecordParamsCopyWith<$Res>  {
  factory $CreateBitcoinRecordParamsCopyWith(CreateBitcoinRecordParams value, $Res Function(CreateBitcoinRecordParams) _then) = _$CreateBitcoinRecordParamsCopyWithImpl;
@useResult
$Res call({
 int satAmount, CategoryId categoryId, DateTime occurredAt, String? memo
});


$CategoryIdCopyWith<$Res> get categoryId;

}
/// @nodoc
class _$CreateBitcoinRecordParamsCopyWithImpl<$Res>
    implements $CreateBitcoinRecordParamsCopyWith<$Res> {
  _$CreateBitcoinRecordParamsCopyWithImpl(this._self, this._then);

  final CreateBitcoinRecordParams _self;
  final $Res Function(CreateBitcoinRecordParams) _then;

/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? satAmount = null,Object? categoryId = null,Object? occurredAt = null,Object? memo = freezed,}) {
  return _then(_self.copyWith(
satAmount: null == satAmount ? _self.satAmount : satAmount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateBitcoinRecordParams].
extension CreateBitcoinRecordParamsPatterns on CreateBitcoinRecordParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBitcoinRecordParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBitcoinRecordParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBitcoinRecordParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int satAmount,  CategoryId categoryId,  DateTime occurredAt,  String? memo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams() when $default != null:
return $default(_that.satAmount,_that.categoryId,_that.occurredAt,_that.memo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int satAmount,  CategoryId categoryId,  DateTime occurredAt,  String? memo)  $default,) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams():
return $default(_that.satAmount,_that.categoryId,_that.occurredAt,_that.memo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int satAmount,  CategoryId categoryId,  DateTime occurredAt,  String? memo)?  $default,) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordParams() when $default != null:
return $default(_that.satAmount,_that.categoryId,_that.occurredAt,_that.memo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBitcoinRecordParams implements CreateBitcoinRecordParams {
  const _CreateBitcoinRecordParams({required this.satAmount, required this.categoryId, required this.occurredAt, this.memo});
  factory _CreateBitcoinRecordParams.fromJson(Map<String, dynamic> json) => _$CreateBitcoinRecordParamsFromJson(json);

@override final  int satAmount;
@override final  CategoryId categoryId;
@override final  DateTime occurredAt;
@override final  String? memo;

/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBitcoinRecordParamsCopyWith<_CreateBitcoinRecordParams> get copyWith => __$CreateBitcoinRecordParamsCopyWithImpl<_CreateBitcoinRecordParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBitcoinRecordParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBitcoinRecordParams&&(identical(other.satAmount, satAmount) || other.satAmount == satAmount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.memo, memo) || other.memo == memo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,satAmount,categoryId,occurredAt,memo);

@override
String toString() {
  return 'CreateBitcoinRecordParams(satAmount: $satAmount, categoryId: $categoryId, occurredAt: $occurredAt, memo: $memo)';
}


}

/// @nodoc
abstract mixin class _$CreateBitcoinRecordParamsCopyWith<$Res> implements $CreateBitcoinRecordParamsCopyWith<$Res> {
  factory _$CreateBitcoinRecordParamsCopyWith(_CreateBitcoinRecordParams value, $Res Function(_CreateBitcoinRecordParams) _then) = __$CreateBitcoinRecordParamsCopyWithImpl;
@override @useResult
$Res call({
 int satAmount, CategoryId categoryId, DateTime occurredAt, String? memo
});


@override $CategoryIdCopyWith<$Res> get categoryId;

}
/// @nodoc
class __$CreateBitcoinRecordParamsCopyWithImpl<$Res>
    implements _$CreateBitcoinRecordParamsCopyWith<$Res> {
  __$CreateBitcoinRecordParamsCopyWithImpl(this._self, this._then);

  final _CreateBitcoinRecordParams _self;
  final $Res Function(_CreateBitcoinRecordParams) _then;

/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? satAmount = null,Object? categoryId = null,Object? occurredAt = null,Object? memo = freezed,}) {
  return _then(_CreateBitcoinRecordParams(
satAmount: null == satAmount ? _self.satAmount : satAmount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateBitcoinRecordParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}
}


/// @nodoc
mixin _$CreateBitcoinRecordResult {

 Transaction get transaction;
/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBitcoinRecordResultCopyWith<CreateBitcoinRecordResult> get copyWith => _$CreateBitcoinRecordResultCopyWithImpl<CreateBitcoinRecordResult>(this as CreateBitcoinRecordResult, _$identity);

  /// Serializes this CreateBitcoinRecordResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBitcoinRecordResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'CreateBitcoinRecordResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $CreateBitcoinRecordResultCopyWith<$Res>  {
  factory $CreateBitcoinRecordResultCopyWith(CreateBitcoinRecordResult value, $Res Function(CreateBitcoinRecordResult) _then) = _$CreateBitcoinRecordResultCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$CreateBitcoinRecordResultCopyWithImpl<$Res>
    implements $CreateBitcoinRecordResultCopyWith<$Res> {
  _$CreateBitcoinRecordResultCopyWithImpl(this._self, this._then);

  final CreateBitcoinRecordResult _self;
  final $Res Function(CreateBitcoinRecordResult) _then;

/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}
/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateBitcoinRecordResult].
extension CreateBitcoinRecordResultPatterns on CreateBitcoinRecordResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBitcoinRecordResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBitcoinRecordResult value)  $default,){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBitcoinRecordResult value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Transaction transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult() when $default != null:
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Transaction transaction)  $default,) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult():
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Transaction transaction)?  $default,) {final _that = this;
switch (_that) {
case _CreateBitcoinRecordResult() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBitcoinRecordResult implements CreateBitcoinRecordResult {
  const _CreateBitcoinRecordResult({required this.transaction});
  factory _CreateBitcoinRecordResult.fromJson(Map<String, dynamic> json) => _$CreateBitcoinRecordResultFromJson(json);

@override final  Transaction transaction;

/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBitcoinRecordResultCopyWith<_CreateBitcoinRecordResult> get copyWith => __$CreateBitcoinRecordResultCopyWithImpl<_CreateBitcoinRecordResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBitcoinRecordResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBitcoinRecordResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'CreateBitcoinRecordResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$CreateBitcoinRecordResultCopyWith<$Res> implements $CreateBitcoinRecordResultCopyWith<$Res> {
  factory _$CreateBitcoinRecordResultCopyWith(_CreateBitcoinRecordResult value, $Res Function(_CreateBitcoinRecordResult) _then) = __$CreateBitcoinRecordResultCopyWithImpl;
@override @useResult
$Res call({
 Transaction transaction
});


@override $TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class __$CreateBitcoinRecordResultCopyWithImpl<$Res>
    implements _$CreateBitcoinRecordResultCopyWith<$Res> {
  __$CreateBitcoinRecordResultCopyWithImpl(this._self, this._then);

  final _CreateBitcoinRecordResult _self;
  final $Res Function(_CreateBitcoinRecordResult) _then;

/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_CreateBitcoinRecordResult(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of CreateBitcoinRecordResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
