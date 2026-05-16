// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BitcoinFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BitcoinFailure()';
}


}

/// @nodoc
class $BitcoinFailureCopyWith<$Res>  {
$BitcoinFailureCopyWith(BitcoinFailure _, $Res Function(BitcoinFailure) __);
}


/// Adds pattern-matching-related methods to [BitcoinFailure].
extension BitcoinFailurePatterns on BitcoinFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BitcoinInvalidSatAmount value)?  invalidSatAmount,TResult Function( BitcoinRateUnavailable value)?  rateUnavailable,TResult Function( BitcoinTransactionSourceError value)?  transactionSourceError,TResult Function( BitcoinStorageError value)?  storageError,TResult Function( BitcoinUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount() when invalidSatAmount != null:
return invalidSatAmount(_that);case BitcoinRateUnavailable() when rateUnavailable != null:
return rateUnavailable(_that);case BitcoinTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that);case BitcoinStorageError() when storageError != null:
return storageError(_that);case BitcoinUnexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BitcoinInvalidSatAmount value)  invalidSatAmount,required TResult Function( BitcoinRateUnavailable value)  rateUnavailable,required TResult Function( BitcoinTransactionSourceError value)  transactionSourceError,required TResult Function( BitcoinStorageError value)  storageError,required TResult Function( BitcoinUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount():
return invalidSatAmount(_that);case BitcoinRateUnavailable():
return rateUnavailable(_that);case BitcoinTransactionSourceError():
return transactionSourceError(_that);case BitcoinStorageError():
return storageError(_that);case BitcoinUnexpected():
return unexpected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BitcoinInvalidSatAmount value)?  invalidSatAmount,TResult? Function( BitcoinRateUnavailable value)?  rateUnavailable,TResult? Function( BitcoinTransactionSourceError value)?  transactionSourceError,TResult? Function( BitcoinStorageError value)?  storageError,TResult? Function( BitcoinUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount() when invalidSatAmount != null:
return invalidSatAmount(_that);case BitcoinRateUnavailable() when rateUnavailable != null:
return rateUnavailable(_that);case BitcoinTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that);case BitcoinStorageError() when storageError != null:
return storageError(_that);case BitcoinUnexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String reason)?  invalidSatAmount,TResult Function( String? message)?  rateUnavailable,TResult Function( String message)?  transactionSourceError,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount() when invalidSatAmount != null:
return invalidSatAmount(_that.reason);case BitcoinRateUnavailable() when rateUnavailable != null:
return rateUnavailable(_that.message);case BitcoinTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that.message);case BitcoinStorageError() when storageError != null:
return storageError(_that.message);case BitcoinUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String reason)  invalidSatAmount,required TResult Function( String? message)  rateUnavailable,required TResult Function( String message)  transactionSourceError,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount():
return invalidSatAmount(_that.reason);case BitcoinRateUnavailable():
return rateUnavailable(_that.message);case BitcoinTransactionSourceError():
return transactionSourceError(_that.message);case BitcoinStorageError():
return storageError(_that.message);case BitcoinUnexpected():
return unexpected(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String reason)?  invalidSatAmount,TResult? Function( String? message)?  rateUnavailable,TResult? Function( String message)?  transactionSourceError,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case BitcoinInvalidSatAmount() when invalidSatAmount != null:
return invalidSatAmount(_that.reason);case BitcoinRateUnavailable() when rateUnavailable != null:
return rateUnavailable(_that.message);case BitcoinTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that.message);case BitcoinStorageError() when storageError != null:
return storageError(_that.message);case BitcoinUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BitcoinInvalidSatAmount extends BitcoinFailure {
  const BitcoinInvalidSatAmount({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinInvalidSatAmountCopyWith<BitcoinInvalidSatAmount> get copyWith => _$BitcoinInvalidSatAmountCopyWithImpl<BitcoinInvalidSatAmount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinInvalidSatAmount&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'BitcoinFailure.invalidSatAmount(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $BitcoinInvalidSatAmountCopyWith<$Res> implements $BitcoinFailureCopyWith<$Res> {
  factory $BitcoinInvalidSatAmountCopyWith(BitcoinInvalidSatAmount value, $Res Function(BitcoinInvalidSatAmount) _then) = _$BitcoinInvalidSatAmountCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$BitcoinInvalidSatAmountCopyWithImpl<$Res>
    implements $BitcoinInvalidSatAmountCopyWith<$Res> {
  _$BitcoinInvalidSatAmountCopyWithImpl(this._self, this._then);

  final BitcoinInvalidSatAmount _self;
  final $Res Function(BitcoinInvalidSatAmount) _then;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(BitcoinInvalidSatAmount(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BitcoinRateUnavailable extends BitcoinFailure {
  const BitcoinRateUnavailable({this.message}): super._();
  

 final  String? message;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinRateUnavailableCopyWith<BitcoinRateUnavailable> get copyWith => _$BitcoinRateUnavailableCopyWithImpl<BitcoinRateUnavailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinRateUnavailable&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BitcoinFailure.rateUnavailable(message: $message)';
}


}

/// @nodoc
abstract mixin class $BitcoinRateUnavailableCopyWith<$Res> implements $BitcoinFailureCopyWith<$Res> {
  factory $BitcoinRateUnavailableCopyWith(BitcoinRateUnavailable value, $Res Function(BitcoinRateUnavailable) _then) = _$BitcoinRateUnavailableCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$BitcoinRateUnavailableCopyWithImpl<$Res>
    implements $BitcoinRateUnavailableCopyWith<$Res> {
  _$BitcoinRateUnavailableCopyWithImpl(this._self, this._then);

  final BitcoinRateUnavailable _self;
  final $Res Function(BitcoinRateUnavailable) _then;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(BitcoinRateUnavailable(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BitcoinTransactionSourceError extends BitcoinFailure {
  const BitcoinTransactionSourceError({required this.message}): super._();
  

 final  String message;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinTransactionSourceErrorCopyWith<BitcoinTransactionSourceError> get copyWith => _$BitcoinTransactionSourceErrorCopyWithImpl<BitcoinTransactionSourceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinTransactionSourceError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BitcoinFailure.transactionSourceError(message: $message)';
}


}

/// @nodoc
abstract mixin class $BitcoinTransactionSourceErrorCopyWith<$Res> implements $BitcoinFailureCopyWith<$Res> {
  factory $BitcoinTransactionSourceErrorCopyWith(BitcoinTransactionSourceError value, $Res Function(BitcoinTransactionSourceError) _then) = _$BitcoinTransactionSourceErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BitcoinTransactionSourceErrorCopyWithImpl<$Res>
    implements $BitcoinTransactionSourceErrorCopyWith<$Res> {
  _$BitcoinTransactionSourceErrorCopyWithImpl(this._self, this._then);

  final BitcoinTransactionSourceError _self;
  final $Res Function(BitcoinTransactionSourceError) _then;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BitcoinTransactionSourceError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BitcoinStorageError extends BitcoinFailure {
  const BitcoinStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinStorageErrorCopyWith<BitcoinStorageError> get copyWith => _$BitcoinStorageErrorCopyWithImpl<BitcoinStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BitcoinFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $BitcoinStorageErrorCopyWith<$Res> implements $BitcoinFailureCopyWith<$Res> {
  factory $BitcoinStorageErrorCopyWith(BitcoinStorageError value, $Res Function(BitcoinStorageError) _then) = _$BitcoinStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$BitcoinStorageErrorCopyWithImpl<$Res>
    implements $BitcoinStorageErrorCopyWith<$Res> {
  _$BitcoinStorageErrorCopyWithImpl(this._self, this._then);

  final BitcoinStorageError _self;
  final $Res Function(BitcoinStorageError) _then;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(BitcoinStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BitcoinUnexpected extends BitcoinFailure {
  const BitcoinUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinUnexpectedCopyWith<BitcoinUnexpected> get copyWith => _$BitcoinUnexpectedCopyWithImpl<BitcoinUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BitcoinFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $BitcoinUnexpectedCopyWith<$Res> implements $BitcoinFailureCopyWith<$Res> {
  factory $BitcoinUnexpectedCopyWith(BitcoinUnexpected value, $Res Function(BitcoinUnexpected) _then) = _$BitcoinUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$BitcoinUnexpectedCopyWithImpl<$Res>
    implements $BitcoinUnexpectedCopyWith<$Res> {
  _$BitcoinUnexpectedCopyWithImpl(this._self, this._then);

  final BitcoinUnexpected _self;
  final $Res Function(BitcoinUnexpected) _then;

/// Create a copy of BitcoinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(BitcoinUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
