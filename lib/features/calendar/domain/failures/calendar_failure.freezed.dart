// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalendarFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalendarFailure()';
}


}

/// @nodoc
class $CalendarFailureCopyWith<$Res>  {
$CalendarFailureCopyWith(CalendarFailure _, $Res Function(CalendarFailure) __);
}


/// Adds pattern-matching-related methods to [CalendarFailure].
extension CalendarFailurePatterns on CalendarFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CalendarInvalidRange value)?  invalidRange,TResult Function( CalendarTransactionSourceError value)?  transactionSourceError,TResult Function( CalendarStorageError value)?  storageError,TResult Function( CalendarUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CalendarInvalidRange() when invalidRange != null:
return invalidRange(_that);case CalendarTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that);case CalendarStorageError() when storageError != null:
return storageError(_that);case CalendarUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CalendarInvalidRange value)  invalidRange,required TResult Function( CalendarTransactionSourceError value)  transactionSourceError,required TResult Function( CalendarStorageError value)  storageError,required TResult Function( CalendarUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case CalendarInvalidRange():
return invalidRange(_that);case CalendarTransactionSourceError():
return transactionSourceError(_that);case CalendarStorageError():
return storageError(_that);case CalendarUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CalendarInvalidRange value)?  invalidRange,TResult? Function( CalendarTransactionSourceError value)?  transactionSourceError,TResult? Function( CalendarStorageError value)?  storageError,TResult? Function( CalendarUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case CalendarInvalidRange() when invalidRange != null:
return invalidRange(_that);case CalendarTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that);case CalendarStorageError() when storageError != null:
return storageError(_that);case CalendarUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String reason)?  invalidRange,TResult Function( String message)?  transactionSourceError,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CalendarInvalidRange() when invalidRange != null:
return invalidRange(_that.reason);case CalendarTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that.message);case CalendarStorageError() when storageError != null:
return storageError(_that.message);case CalendarUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String reason)  invalidRange,required TResult Function( String message)  transactionSourceError,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case CalendarInvalidRange():
return invalidRange(_that.reason);case CalendarTransactionSourceError():
return transactionSourceError(_that.message);case CalendarStorageError():
return storageError(_that.message);case CalendarUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String reason)?  invalidRange,TResult? Function( String message)?  transactionSourceError,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case CalendarInvalidRange() when invalidRange != null:
return invalidRange(_that.reason);case CalendarTransactionSourceError() when transactionSourceError != null:
return transactionSourceError(_that.message);case CalendarStorageError() when storageError != null:
return storageError(_that.message);case CalendarUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CalendarInvalidRange extends CalendarFailure {
  const CalendarInvalidRange({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarInvalidRangeCopyWith<CalendarInvalidRange> get copyWith => _$CalendarInvalidRangeCopyWithImpl<CalendarInvalidRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarInvalidRange&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'CalendarFailure.invalidRange(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CalendarInvalidRangeCopyWith<$Res> implements $CalendarFailureCopyWith<$Res> {
  factory $CalendarInvalidRangeCopyWith(CalendarInvalidRange value, $Res Function(CalendarInvalidRange) _then) = _$CalendarInvalidRangeCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$CalendarInvalidRangeCopyWithImpl<$Res>
    implements $CalendarInvalidRangeCopyWith<$Res> {
  _$CalendarInvalidRangeCopyWithImpl(this._self, this._then);

  final CalendarInvalidRange _self;
  final $Res Function(CalendarInvalidRange) _then;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(CalendarInvalidRange(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CalendarTransactionSourceError extends CalendarFailure {
  const CalendarTransactionSourceError({required this.message}): super._();
  

 final  String message;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarTransactionSourceErrorCopyWith<CalendarTransactionSourceError> get copyWith => _$CalendarTransactionSourceErrorCopyWithImpl<CalendarTransactionSourceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarTransactionSourceError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CalendarFailure.transactionSourceError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CalendarTransactionSourceErrorCopyWith<$Res> implements $CalendarFailureCopyWith<$Res> {
  factory $CalendarTransactionSourceErrorCopyWith(CalendarTransactionSourceError value, $Res Function(CalendarTransactionSourceError) _then) = _$CalendarTransactionSourceErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CalendarTransactionSourceErrorCopyWithImpl<$Res>
    implements $CalendarTransactionSourceErrorCopyWith<$Res> {
  _$CalendarTransactionSourceErrorCopyWithImpl(this._self, this._then);

  final CalendarTransactionSourceError _self;
  final $Res Function(CalendarTransactionSourceError) _then;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CalendarTransactionSourceError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CalendarStorageError extends CalendarFailure {
  const CalendarStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarStorageErrorCopyWith<CalendarStorageError> get copyWith => _$CalendarStorageErrorCopyWithImpl<CalendarStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CalendarFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CalendarStorageErrorCopyWith<$Res> implements $CalendarFailureCopyWith<$Res> {
  factory $CalendarStorageErrorCopyWith(CalendarStorageError value, $Res Function(CalendarStorageError) _then) = _$CalendarStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CalendarStorageErrorCopyWithImpl<$Res>
    implements $CalendarStorageErrorCopyWith<$Res> {
  _$CalendarStorageErrorCopyWithImpl(this._self, this._then);

  final CalendarStorageError _self;
  final $Res Function(CalendarStorageError) _then;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CalendarStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CalendarUnexpected extends CalendarFailure {
  const CalendarUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarUnexpectedCopyWith<CalendarUnexpected> get copyWith => _$CalendarUnexpectedCopyWithImpl<CalendarUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CalendarFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $CalendarUnexpectedCopyWith<$Res> implements $CalendarFailureCopyWith<$Res> {
  factory $CalendarUnexpectedCopyWith(CalendarUnexpected value, $Res Function(CalendarUnexpected) _then) = _$CalendarUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CalendarUnexpectedCopyWithImpl<$Res>
    implements $CalendarUnexpectedCopyWith<$Res> {
  _$CalendarUnexpectedCopyWithImpl(this._self, this._then);

  final CalendarUnexpected _self;
  final $Res Function(CalendarUnexpected) _then;

/// Create a copy of CalendarFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CalendarUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
