// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure()';
}


}

/// @nodoc
class $SettingsFailureCopyWith<$Res>  {
$SettingsFailureCopyWith(SettingsFailure _, $Res Function(SettingsFailure) __);
}


/// Adds pattern-matching-related methods to [SettingsFailure].
extension SettingsFailurePatterns on SettingsFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SettingsNotInitialized value)?  notInitialized,TResult Function( SettingsInvalidValue value)?  invalidValue,TResult Function( SettingsStorageError value)?  storageError,TResult Function( SettingsUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SettingsNotInitialized() when notInitialized != null:
return notInitialized(_that);case SettingsInvalidValue() when invalidValue != null:
return invalidValue(_that);case SettingsStorageError() when storageError != null:
return storageError(_that);case SettingsUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SettingsNotInitialized value)  notInitialized,required TResult Function( SettingsInvalidValue value)  invalidValue,required TResult Function( SettingsStorageError value)  storageError,required TResult Function( SettingsUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case SettingsNotInitialized():
return notInitialized(_that);case SettingsInvalidValue():
return invalidValue(_that);case SettingsStorageError():
return storageError(_that);case SettingsUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SettingsNotInitialized value)?  notInitialized,TResult? Function( SettingsInvalidValue value)?  invalidValue,TResult? Function( SettingsStorageError value)?  storageError,TResult? Function( SettingsUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case SettingsNotInitialized() when notInitialized != null:
return notInitialized(_that);case SettingsInvalidValue() when invalidValue != null:
return invalidValue(_that);case SettingsStorageError() when storageError != null:
return storageError(_that);case SettingsUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notInitialized,TResult Function( String reason)?  invalidValue,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SettingsNotInitialized() when notInitialized != null:
return notInitialized();case SettingsInvalidValue() when invalidValue != null:
return invalidValue(_that.reason);case SettingsStorageError() when storageError != null:
return storageError(_that.message);case SettingsUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notInitialized,required TResult Function( String reason)  invalidValue,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case SettingsNotInitialized():
return notInitialized();case SettingsInvalidValue():
return invalidValue(_that.reason);case SettingsStorageError():
return storageError(_that.message);case SettingsUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notInitialized,TResult? Function( String reason)?  invalidValue,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case SettingsNotInitialized() when notInitialized != null:
return notInitialized();case SettingsInvalidValue() when invalidValue != null:
return invalidValue(_that.reason);case SettingsStorageError() when storageError != null:
return storageError(_that.message);case SettingsUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SettingsNotInitialized extends SettingsFailure {
  const SettingsNotInitialized(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsNotInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure.notInitialized()';
}


}




/// @nodoc


class SettingsInvalidValue extends SettingsFailure {
  const SettingsInvalidValue({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsInvalidValueCopyWith<SettingsInvalidValue> get copyWith => _$SettingsInvalidValueCopyWithImpl<SettingsInvalidValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsInvalidValue&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'SettingsFailure.invalidValue(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $SettingsInvalidValueCopyWith<$Res> implements $SettingsFailureCopyWith<$Res> {
  factory $SettingsInvalidValueCopyWith(SettingsInvalidValue value, $Res Function(SettingsInvalidValue) _then) = _$SettingsInvalidValueCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$SettingsInvalidValueCopyWithImpl<$Res>
    implements $SettingsInvalidValueCopyWith<$Res> {
  _$SettingsInvalidValueCopyWithImpl(this._self, this._then);

  final SettingsInvalidValue _self;
  final $Res Function(SettingsInvalidValue) _then;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(SettingsInvalidValue(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettingsStorageError extends SettingsFailure {
  const SettingsStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStorageErrorCopyWith<SettingsStorageError> get copyWith => _$SettingsStorageErrorCopyWithImpl<SettingsStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SettingsFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $SettingsStorageErrorCopyWith<$Res> implements $SettingsFailureCopyWith<$Res> {
  factory $SettingsStorageErrorCopyWith(SettingsStorageError value, $Res Function(SettingsStorageError) _then) = _$SettingsStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$SettingsStorageErrorCopyWithImpl<$Res>
    implements $SettingsStorageErrorCopyWith<$Res> {
  _$SettingsStorageErrorCopyWithImpl(this._self, this._then);

  final SettingsStorageError _self;
  final $Res Function(SettingsStorageError) _then;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(SettingsStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SettingsUnexpected extends SettingsFailure {
  const SettingsUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsUnexpectedCopyWith<SettingsUnexpected> get copyWith => _$SettingsUnexpectedCopyWithImpl<SettingsUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SettingsFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $SettingsUnexpectedCopyWith<$Res> implements $SettingsFailureCopyWith<$Res> {
  factory $SettingsUnexpectedCopyWith(SettingsUnexpected value, $Res Function(SettingsUnexpected) _then) = _$SettingsUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$SettingsUnexpectedCopyWithImpl<$Res>
    implements $SettingsUnexpectedCopyWith<$Res> {
  _$SettingsUnexpectedCopyWithImpl(this._self, this._then);

  final SettingsUnexpected _self;
  final $Res Function(SettingsUnexpected) _then;

/// Create a copy of SettingsFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(SettingsUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
