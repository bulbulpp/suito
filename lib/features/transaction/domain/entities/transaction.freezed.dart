// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {

 TransactionId get id; TransactionType get type; Money get amount; CategoryId get categoryId; DateTime get occurredAt; PaymentMethod get paymentMethod; DateTime get createdAt; DateTime get updatedAt; String? get memo; BitcoinRecordSnapshot? get bitcoinSnapshot;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.bitcoinSnapshot, bitcoinSnapshot) || other.bitcoinSnapshot == bitcoinSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,categoryId,occurredAt,paymentMethod,createdAt,updatedAt,memo,bitcoinSnapshot);

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, categoryId: $categoryId, occurredAt: $occurredAt, paymentMethod: $paymentMethod, createdAt: $createdAt, updatedAt: $updatedAt, memo: $memo, bitcoinSnapshot: $bitcoinSnapshot)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 TransactionId id, TransactionType type, Money amount, CategoryId categoryId, DateTime occurredAt, PaymentMethod paymentMethod, DateTime createdAt, DateTime updatedAt, String? memo, BitcoinRecordSnapshot? bitcoinSnapshot
});


$TransactionIdCopyWith<$Res> get id;$MoneyCopyWith<$Res> get amount;$CategoryIdCopyWith<$Res> get categoryId;$BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? categoryId = null,Object? occurredAt = null,Object? paymentMethod = null,Object? createdAt = null,Object? updatedAt = null,Object? memo = freezed,Object? bitcoinSnapshot = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,bitcoinSnapshot: freezed == bitcoinSnapshot ? _self.bitcoinSnapshot : bitcoinSnapshot // ignore: cast_nullable_to_non_nullable
as BitcoinRecordSnapshot?,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get id {
  
  return $TransactionIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of Transaction
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


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionId id,  TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  DateTime createdAt,  DateTime updatedAt,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.createdAt,_that.updatedAt,_that.memo,_that.bitcoinSnapshot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionId id,  TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  DateTime createdAt,  DateTime updatedAt,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.createdAt,_that.updatedAt,_that.memo,_that.bitcoinSnapshot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionId id,  TransactionType type,  Money amount,  CategoryId categoryId,  DateTime occurredAt,  PaymentMethod paymentMethod,  DateTime createdAt,  DateTime updatedAt,  String? memo,  BitcoinRecordSnapshot? bitcoinSnapshot)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.categoryId,_that.occurredAt,_that.paymentMethod,_that.createdAt,_that.updatedAt,_that.memo,_that.bitcoinSnapshot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction extends Transaction {
  const _Transaction({required this.id, required this.type, required this.amount, required this.categoryId, required this.occurredAt, required this.paymentMethod, required this.createdAt, required this.updatedAt, this.memo, this.bitcoinSnapshot}): super._();
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  TransactionId id;
@override final  TransactionType type;
@override final  Money amount;
@override final  CategoryId categoryId;
@override final  DateTime occurredAt;
@override final  PaymentMethod paymentMethod;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? memo;
@override final  BitcoinRecordSnapshot? bitcoinSnapshot;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.bitcoinSnapshot, bitcoinSnapshot) || other.bitcoinSnapshot == bitcoinSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,categoryId,occurredAt,paymentMethod,createdAt,updatedAt,memo,bitcoinSnapshot);

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, categoryId: $categoryId, occurredAt: $occurredAt, paymentMethod: $paymentMethod, createdAt: $createdAt, updatedAt: $updatedAt, memo: $memo, bitcoinSnapshot: $bitcoinSnapshot)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 TransactionId id, TransactionType type, Money amount, CategoryId categoryId, DateTime occurredAt, PaymentMethod paymentMethod, DateTime createdAt, DateTime updatedAt, String? memo, BitcoinRecordSnapshot? bitcoinSnapshot
});


@override $TransactionIdCopyWith<$Res> get id;@override $MoneyCopyWith<$Res> get amount;@override $CategoryIdCopyWith<$Res> get categoryId;@override $BitcoinRecordSnapshotCopyWith<$Res>? get bitcoinSnapshot;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? categoryId = null,Object? occurredAt = null,Object? paymentMethod = null,Object? createdAt = null,Object? updatedAt = null,Object? memo = freezed,Object? bitcoinSnapshot = freezed,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as CategoryId,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,bitcoinSnapshot: freezed == bitcoinSnapshot ? _self.bitcoinSnapshot : bitcoinSnapshot // ignore: cast_nullable_to_non_nullable
as BitcoinRecordSnapshot?,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get id {
  
  return $TransactionIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get categoryId {
  
  return $CategoryIdCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of Transaction
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

// dart format on
