// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTransactionParams {

 TransactionType get type; Money get amount; CategoryId get categoryId; DateTime get occurredAt; PaymentMethod get paymentMethod; String? get memo; BitcoinRecordSnapshot? get bitcoinSnapshot;
/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionParamsCopyWith<CreateTransactionParams> get copyWith => _$CreateTransactionParamsCopyWithImpl<CreateTransactionParams>(this as CreateTransactionParams, _$identity);

  /// Serializes this CreateTransactionParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionParams&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.bitcoinSnapshot, bitcoinSnapshot) || other.bitcoinSnapshot == bitcoinSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,categoryId,occurredAt,paymentMethod,memo,bitcoinSnapshot);

@override
String toString() {
  return 'CreateTransactionParams(type: $type, amount: $amount, categoryId: $categoryId, occurredAt: $occurredAt, paymentMethod: $paymentMethod, memo: $memo, bitcoinSnapshot: $bitcoinSnapshot)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionParamsCopyWith<$Res>  {
  factory $CreateTransactionParamsCopyWith(CreateTransactionParams value, $Res Function(CreateTransactionParams) _then) = _$CreateTransactionParamsCopyWithImpl;
@useResult
$Res call({
 TransactionType type, Money amount, CategoryId categoryId, DateTime occurredAt, PaymentMethod paymentMethod, String? memo, BitcoinRecordSnapshot? bitcoinSnapshot
});


$MoneyCopyWith<$Res> get amount;$CategoryIdCopyWith<$Res> get categoryId;$BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot;

}
/// @nodoc
class _$CreateTransactionParamsCopyWithImpl<$Res>
    implements $CreateTransactionParamsCopyWith<$Res> {
  _$CreateTransactionParamsCopyWithImpl(this._self, this._then);

  final CreateTransactionParams _self;
  final $Res Function(CreateTransactionParams) _then;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? amount = null,Object? categoryId = null,Object? occurredAt = null,Object? paymentMethod = null,Object? memo = freezed,Object? bitcoinSnapshot = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,bitcoinSnapshot: freezed == bitcoinSnapshot ? _self.bitcoinSnapshot : bitcoinSnapshot // ignore: cast_nullable_to_non_nullable
as BitcoinRecordSnapshot?,
  ));
}
/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot {
    if (_self.bitcoinSnapshot == null) {
    return null;
  }

  return $BitcoinRecordSnapshotCopyWith<$Res>(_self.bitcoinSnapshot!, (value) {
    return _then(_self.copyWith(bitcoinSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTransactionParams].
extension CreateTransactionParamsPatterns on CreateTransactionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
return $default(_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.memo,_that.bitcoinSnapshot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionParams():
return $default(_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.memo,_that.bitcoinSnapshot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
return $default(_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.memo,_that.bitcoinSnapshot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTransactionParams implements CreateTransactionParams {
  const _CreateTransactionParams({required this.type, required this.amount, required this.categoryId, required this.occurredAt, required this.paymentMethod, this.memo, this.bitcoinSnapshot});
  factory _CreateTransactionParams.fromJson(Map<String, dynamic> json) => _$CreateTransactionParamsFromJson(json);

@override final  TransactionType type;
@override final  Money amount;
@override final  CategoryId categoryId;
@override final  DateTime occurredAt;
@override final  PaymentMethod paymentMethod;
@override final  String? memo;
@override final  BitcoinRecordSnapshot? bitcoinSnapshot;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionParamsCopyWith<_CreateTransactionParams> get copyWith => __$CreateTransactionParamsCopyWithImpl<_CreateTransactionParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTransactionParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionParams&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.bitcoinSnapshot, bitcoinSnapshot) || other.bitcoinSnapshot == bitcoinSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,categoryId,occurredAt,paymentMethod,memo,bitcoinSnapshot);

@override
String toString() {
  return 'CreateTransactionParams(type: $type, amount: $amount, categoryId: $categoryId, occurredAt: $occurredAt, paymentMethod: $paymentMethod, memo: $memo, bitcoinSnapshot: $bitcoinSnapshot)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionParamsCopyWith<$Res> implements $CreateTransactionParamsCopyWith<$Res> {
  factory _$CreateTransactionParamsCopyWith(_CreateTransactionParams value, $Res Function(_CreateTransactionParams) _then) = __$CreateTransactionParamsCopyWithImpl;
@override @useResult
$Res call({
 TransactionType type, Money amount, CategoryId categoryId, DateTime occurredAt, PaymentMethod paymentMethod, String? memo, BitcoinRecordSnapshot? bitcoinSnapshot
});


@override $MoneyCopyWith<$Res> get amount;@override $CategoryIdCopyWith<$Res> get categoryId;@override $BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot;

}
/// @nodoc
class __$CreateTransactionParamsCopyWithImpl<$Res>
    implements _$CreateTransactionParamsCopyWith<$Res> {
  __$CreateTransactionParamsCopyWithImpl(this._self, this._then);

  final _CreateTransactionParams _self;
  final $Res Function(_CreateTransactionParams) _then;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? amount = null,Object? categoryId = null,Object? occurredAt = null,Object? paymentMethod = null,Object? memo = freezed,Object? bitcoinSnapshot = freezed,}) {
  return _then(_CreateTransactionParams(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,bitcoinSnapshot: freezed == bitcoinSnapshot ? _self.bitcoinSnapshot : bitcoinSnapshot // ignore: cast_nullable_to_non_nullable
as BitcoinRecordSnapshot?,
  ));
}

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot {
    if (_self.bitcoinSnapshot == null) {
    return null;
  }

  return $BitcoinRecordSnapshotCopyWith<$Res>(_self.bitcoinSnapshot!, (value) {
    return _then(_self.copyWith(bitcoinSnapshot: value));
  });
}
}


/// @nodoc
mixin _$CreateTransactionResult {

 Transaction get transaction;
/// Create a copy of CreateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionResultCopyWith<CreateTransactionResult> get copyWith => _$CreateTransactionResultCopyWithImpl<CreateTransactionResult>(this as CreateTransactionResult, _$identity);

  /// Serializes this CreateTransactionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'CreateTransactionResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionResultCopyWith<$Res>  {
  factory $CreateTransactionResultCopyWith(CreateTransactionResult value, $Res Function(CreateTransactionResult) _then) = _$CreateTransactionResultCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$CreateTransactionResultCopyWithImpl<$Res>
    implements $CreateTransactionResultCopyWith<$Res> {
  _$CreateTransactionResultCopyWithImpl(this._self, this._then);

  final CreateTransactionResult _self;
  final $Res Function(CreateTransactionResult) _then;

/// Create a copy of CreateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}
/// Create a copy of CreateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTransactionResult].
extension CreateTransactionResultPatterns on CreateTransactionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionResult value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionResult value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionResult() when $default != null:
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
case _CreateTransactionResult() when $default != null:
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
case _CreateTransactionResult():
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
case _CreateTransactionResult() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTransactionResult implements CreateTransactionResult {
  const _CreateTransactionResult({required this.transaction});
  factory _CreateTransactionResult.fromJson(Map<String, dynamic> json) => _$CreateTransactionResultFromJson(json);

@override final  Transaction transaction;

/// Create a copy of CreateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionResultCopyWith<_CreateTransactionResult> get copyWith => __$CreateTransactionResultCopyWithImpl<_CreateTransactionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTransactionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'CreateTransactionResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionResultCopyWith<$Res> implements $CreateTransactionResultCopyWith<$Res> {
  factory _$CreateTransactionResultCopyWith(_CreateTransactionResult value, $Res Function(_CreateTransactionResult) _then) = __$CreateTransactionResultCopyWithImpl;
@override @useResult
$Res call({
 Transaction transaction
});


@override $TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class __$CreateTransactionResultCopyWithImpl<$Res>
    implements _$CreateTransactionResultCopyWith<$Res> {
  __$CreateTransactionResultCopyWithImpl(this._self, this._then);

  final _CreateTransactionResult _self;
  final $Res Function(_CreateTransactionResult) _then;

/// Create a copy of CreateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_CreateTransactionResult(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of CreateTransactionResult
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
