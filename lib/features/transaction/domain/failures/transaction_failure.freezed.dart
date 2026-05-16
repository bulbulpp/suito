// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure()';
}


}

/// @nodoc
class $TransactionFailureCopyWith<$Res>  {
$TransactionFailureCopyWith(TransactionFailure _, $Res Function(TransactionFailure) __);
}


/// Adds pattern-matching-related methods to [TransactionFailure].
extension TransactionFailurePatterns on TransactionFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransactionNotFound value)?  notFound,TResult Function( TransactionInvalidAmount value)?  invalidAmount,TResult Function( TransactionInvalidDate value)?  invalidDate,TResult Function( TransactionInvalidCategory value)?  invalidCategory,TResult Function( TransactionStorageError value)?  storageError,TResult Function( TransactionUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransactionNotFound() when notFound != null:
return notFound(_that);case TransactionInvalidAmount() when invalidAmount != null:
return invalidAmount(_that);case TransactionInvalidDate() when invalidDate != null:
return invalidDate(_that);case TransactionInvalidCategory() when invalidCategory != null:
return invalidCategory(_that);case TransactionStorageError() when storageError != null:
return storageError(_that);case TransactionUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransactionNotFound value)  notFound,required TResult Function( TransactionInvalidAmount value)  invalidAmount,required TResult Function( TransactionInvalidDate value)  invalidDate,required TResult Function( TransactionInvalidCategory value)  invalidCategory,required TResult Function( TransactionStorageError value)  storageError,required TResult Function( TransactionUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case TransactionNotFound():
return notFound(_that);case TransactionInvalidAmount():
return invalidAmount(_that);case TransactionInvalidDate():
return invalidDate(_that);case TransactionInvalidCategory():
return invalidCategory(_that);case TransactionStorageError():
return storageError(_that);case TransactionUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransactionNotFound value)?  notFound,TResult? Function( TransactionInvalidAmount value)?  invalidAmount,TResult? Function( TransactionInvalidDate value)?  invalidDate,TResult? Function( TransactionInvalidCategory value)?  invalidCategory,TResult? Function( TransactionStorageError value)?  storageError,TResult? Function( TransactionUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case TransactionNotFound() when notFound != null:
return notFound(_that);case TransactionInvalidAmount() when invalidAmount != null:
return invalidAmount(_that);case TransactionInvalidDate() when invalidDate != null:
return invalidDate(_that);case TransactionInvalidCategory() when invalidCategory != null:
return invalidCategory(_that);case TransactionStorageError() when storageError != null:
return storageError(_that);case TransactionUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notFound,TResult Function( String? reason)?  invalidAmount,TResult Function( String? reason)?  invalidDate,TResult Function( String? reason)?  invalidCategory,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransactionNotFound() when notFound != null:
return notFound();case TransactionInvalidAmount() when invalidAmount != null:
return invalidAmount(_that.reason);case TransactionInvalidDate() when invalidDate != null:
return invalidDate(_that.reason);case TransactionInvalidCategory() when invalidCategory != null:
return invalidCategory(_that.reason);case TransactionStorageError() when storageError != null:
return storageError(_that.message);case TransactionUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notFound,required TResult Function( String? reason)  invalidAmount,required TResult Function( String? reason)  invalidDate,required TResult Function( String? reason)  invalidCategory,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case TransactionNotFound():
return notFound();case TransactionInvalidAmount():
return invalidAmount(_that.reason);case TransactionInvalidDate():
return invalidDate(_that.reason);case TransactionInvalidCategory():
return invalidCategory(_that.reason);case TransactionStorageError():
return storageError(_that.message);case TransactionUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notFound,TResult? Function( String? reason)?  invalidAmount,TResult? Function( String? reason)?  invalidDate,TResult? Function( String? reason)?  invalidCategory,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case TransactionNotFound() when notFound != null:
return notFound();case TransactionInvalidAmount() when invalidAmount != null:
return invalidAmount(_that.reason);case TransactionInvalidDate() when invalidDate != null:
return invalidDate(_that.reason);case TransactionInvalidCategory() when invalidCategory != null:
return invalidCategory(_that.reason);case TransactionStorageError() when storageError != null:
return storageError(_that.message);case TransactionUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TransactionNotFound extends TransactionFailure {
  const TransactionNotFound(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure.notFound()';
}


}




/// @nodoc


class TransactionInvalidAmount extends TransactionFailure {
  const TransactionInvalidAmount({this.reason}): super._();
  

 final  String? reason;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInvalidAmountCopyWith<TransactionInvalidAmount> get copyWith => _$TransactionInvalidAmountCopyWithImpl<TransactionInvalidAmount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInvalidAmount&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'TransactionFailure.invalidAmount(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $TransactionInvalidAmountCopyWith<$Res> implements $TransactionFailureCopyWith<$Res> {
  factory $TransactionInvalidAmountCopyWith(TransactionInvalidAmount value, $Res Function(TransactionInvalidAmount) _then) = _$TransactionInvalidAmountCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class _$TransactionInvalidAmountCopyWithImpl<$Res>
    implements $TransactionInvalidAmountCopyWith<$Res> {
  _$TransactionInvalidAmountCopyWithImpl(this._self, this._then);

  final TransactionInvalidAmount _self;
  final $Res Function(TransactionInvalidAmount) _then;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(TransactionInvalidAmount(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TransactionInvalidDate extends TransactionFailure {
  const TransactionInvalidDate({this.reason}): super._();
  

 final  String? reason;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInvalidDateCopyWith<TransactionInvalidDate> get copyWith => _$TransactionInvalidDateCopyWithImpl<TransactionInvalidDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInvalidDate&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'TransactionFailure.invalidDate(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $TransactionInvalidDateCopyWith<$Res> implements $TransactionFailureCopyWith<$Res> {
  factory $TransactionInvalidDateCopyWith(TransactionInvalidDate value, $Res Function(TransactionInvalidDate) _then) = _$TransactionInvalidDateCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class _$TransactionInvalidDateCopyWithImpl<$Res>
    implements $TransactionInvalidDateCopyWith<$Res> {
  _$TransactionInvalidDateCopyWithImpl(this._self, this._then);

  final TransactionInvalidDate _self;
  final $Res Function(TransactionInvalidDate) _then;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(TransactionInvalidDate(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TransactionInvalidCategory extends TransactionFailure {
  const TransactionInvalidCategory({this.reason}): super._();
  

 final  String? reason;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInvalidCategoryCopyWith<TransactionInvalidCategory> get copyWith => _$TransactionInvalidCategoryCopyWithImpl<TransactionInvalidCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInvalidCategory&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'TransactionFailure.invalidCategory(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $TransactionInvalidCategoryCopyWith<$Res> implements $TransactionFailureCopyWith<$Res> {
  factory $TransactionInvalidCategoryCopyWith(TransactionInvalidCategory value, $Res Function(TransactionInvalidCategory) _then) = _$TransactionInvalidCategoryCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class _$TransactionInvalidCategoryCopyWithImpl<$Res>
    implements $TransactionInvalidCategoryCopyWith<$Res> {
  _$TransactionInvalidCategoryCopyWithImpl(this._self, this._then);

  final TransactionInvalidCategory _self;
  final $Res Function(TransactionInvalidCategory) _then;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(TransactionInvalidCategory(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TransactionStorageError extends TransactionFailure {
  const TransactionStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStorageErrorCopyWith<TransactionStorageError> get copyWith => _$TransactionStorageErrorCopyWithImpl<TransactionStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $TransactionStorageErrorCopyWith<$Res> implements $TransactionFailureCopyWith<$Res> {
  factory $TransactionStorageErrorCopyWith(TransactionStorageError value, $Res Function(TransactionStorageError) _then) = _$TransactionStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TransactionStorageErrorCopyWithImpl<$Res>
    implements $TransactionStorageErrorCopyWith<$Res> {
  _$TransactionStorageErrorCopyWithImpl(this._self, this._then);

  final TransactionStorageError _self;
  final $Res Function(TransactionStorageError) _then;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TransactionStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TransactionUnexpected extends TransactionFailure {
  const TransactionUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionUnexpectedCopyWith<TransactionUnexpected> get copyWith => _$TransactionUnexpectedCopyWithImpl<TransactionUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $TransactionUnexpectedCopyWith<$Res> implements $TransactionFailureCopyWith<$Res> {
  factory $TransactionUnexpectedCopyWith(TransactionUnexpected value, $Res Function(TransactionUnexpected) _then) = _$TransactionUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TransactionUnexpectedCopyWithImpl<$Res>
    implements $TransactionUnexpectedCopyWith<$Res> {
  _$TransactionUnexpectedCopyWithImpl(this._self, this._then);

  final TransactionUnexpected _self;
  final $Res Function(TransactionUnexpected) _then;

/// Create a copy of TransactionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TransactionUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
