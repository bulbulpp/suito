// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_transaction_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTransactionParams {

 Transaction get transaction;
/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionParamsCopyWith<UpdateTransactionParams> get copyWith => _$UpdateTransactionParamsCopyWithImpl<UpdateTransactionParams>(this as UpdateTransactionParams, _$identity);

  /// Serializes this UpdateTransactionParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactionParams&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'UpdateTransactionParams(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionParamsCopyWith<$Res>  {
  factory $UpdateTransactionParamsCopyWith(UpdateTransactionParams value, $Res Function(UpdateTransactionParams) _then) = _$UpdateTransactionParamsCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$UpdateTransactionParamsCopyWithImpl<$Res>
    implements $UpdateTransactionParamsCopyWith<$Res> {
  _$UpdateTransactionParamsCopyWithImpl(this._self, this._then);

  final UpdateTransactionParams _self;
  final $Res Function(UpdateTransactionParams) _then;

/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}
/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTransactionParams].
extension UpdateTransactionParamsPatterns on UpdateTransactionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTransactionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTransactionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTransactionParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTransactionParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionParams() when $default != null:
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
case _UpdateTransactionParams() when $default != null:
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
case _UpdateTransactionParams():
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
case _UpdateTransactionParams() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTransactionParams implements UpdateTransactionParams {
  const _UpdateTransactionParams({required this.transaction});
  factory _UpdateTransactionParams.fromJson(Map<String, dynamic> json) => _$UpdateTransactionParamsFromJson(json);

@override final  Transaction transaction;

/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTransactionParamsCopyWith<_UpdateTransactionParams> get copyWith => __$UpdateTransactionParamsCopyWithImpl<_UpdateTransactionParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTransactionParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTransactionParams&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'UpdateTransactionParams(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$UpdateTransactionParamsCopyWith<$Res> implements $UpdateTransactionParamsCopyWith<$Res> {
  factory _$UpdateTransactionParamsCopyWith(_UpdateTransactionParams value, $Res Function(_UpdateTransactionParams) _then) = __$UpdateTransactionParamsCopyWithImpl;
@override @useResult
$Res call({
 Transaction transaction
});


@override $TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class __$UpdateTransactionParamsCopyWithImpl<$Res>
    implements _$UpdateTransactionParamsCopyWith<$Res> {
  __$UpdateTransactionParamsCopyWithImpl(this._self, this._then);

  final _UpdateTransactionParams _self;
  final $Res Function(_UpdateTransactionParams) _then;

/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_UpdateTransactionParams(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of UpdateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// @nodoc
mixin _$UpdateTransactionResult {

 Transaction get transaction;
/// Create a copy of UpdateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionResultCopyWith<UpdateTransactionResult> get copyWith => _$UpdateTransactionResultCopyWithImpl<UpdateTransactionResult>(this as UpdateTransactionResult, _$identity);

  /// Serializes this UpdateTransactionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactionResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'UpdateTransactionResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionResultCopyWith<$Res>  {
  factory $UpdateTransactionResultCopyWith(UpdateTransactionResult value, $Res Function(UpdateTransactionResult) _then) = _$UpdateTransactionResultCopyWithImpl;
@useResult
$Res call({
 Transaction transaction
});


$TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$UpdateTransactionResultCopyWithImpl<$Res>
    implements $UpdateTransactionResultCopyWith<$Res> {
  _$UpdateTransactionResultCopyWithImpl(this._self, this._then);

  final UpdateTransactionResult _self;
  final $Res Function(UpdateTransactionResult) _then;

/// Create a copy of UpdateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}
/// Create a copy of UpdateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get transaction {
  
  return $TransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTransactionResult].
extension UpdateTransactionResultPatterns on UpdateTransactionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTransactionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTransactionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTransactionResult value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTransactionResult value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionResult() when $default != null:
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
case _UpdateTransactionResult() when $default != null:
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
case _UpdateTransactionResult():
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
case _UpdateTransactionResult() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTransactionResult implements UpdateTransactionResult {
  const _UpdateTransactionResult({required this.transaction});
  factory _UpdateTransactionResult.fromJson(Map<String, dynamic> json) => _$UpdateTransactionResultFromJson(json);

@override final  Transaction transaction;

/// Create a copy of UpdateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTransactionResultCopyWith<_UpdateTransactionResult> get copyWith => __$UpdateTransactionResultCopyWithImpl<_UpdateTransactionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTransactionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTransactionResult&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'UpdateTransactionResult(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$UpdateTransactionResultCopyWith<$Res> implements $UpdateTransactionResultCopyWith<$Res> {
  factory _$UpdateTransactionResultCopyWith(_UpdateTransactionResult value, $Res Function(_UpdateTransactionResult) _then) = __$UpdateTransactionResultCopyWithImpl;
@override @useResult
$Res call({
 Transaction transaction
});


@override $TransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class __$UpdateTransactionResultCopyWithImpl<$Res>
    implements _$UpdateTransactionResultCopyWith<$Res> {
  __$UpdateTransactionResultCopyWithImpl(this._self, this._then);

  final _UpdateTransactionResult _self;
  final $Res Function(_UpdateTransactionResult) _then;

/// Create a copy of UpdateTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_UpdateTransactionResult(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction,
  ));
}

/// Create a copy of UpdateTransactionResult
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
