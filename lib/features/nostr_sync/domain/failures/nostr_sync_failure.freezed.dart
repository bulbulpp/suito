// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nostr_sync_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NostrSyncFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NostrSyncFailure()';
}


}

/// @nodoc
class $NostrSyncFailureCopyWith<$Res>  {
$NostrSyncFailureCopyWith(NostrSyncFailure _, $Res Function(NostrSyncFailure) __);
}


/// Adds pattern-matching-related methods to [NostrSyncFailure].
extension NostrSyncFailurePatterns on NostrSyncFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NostrSyncKeyMissing value)?  keyMissing,TResult Function( NostrSyncInvalidRelayUrl value)?  invalidRelayUrl,TResult Function( NostrSyncRelayUnreachable value)?  relayUnreachable,TResult Function( NostrSyncSignatureFailed value)?  signatureFailed,TResult Function( NostrSyncDecryptionFailed value)?  decryptionFailed,TResult Function( NostrSyncInvalidEvent value)?  invalidEvent,TResult Function( NostrSyncStorageError value)?  storageError,TResult Function( NostrSyncUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NostrSyncKeyMissing() when keyMissing != null:
return keyMissing(_that);case NostrSyncInvalidRelayUrl() when invalidRelayUrl != null:
return invalidRelayUrl(_that);case NostrSyncRelayUnreachable() when relayUnreachable != null:
return relayUnreachable(_that);case NostrSyncSignatureFailed() when signatureFailed != null:
return signatureFailed(_that);case NostrSyncDecryptionFailed() when decryptionFailed != null:
return decryptionFailed(_that);case NostrSyncInvalidEvent() when invalidEvent != null:
return invalidEvent(_that);case NostrSyncStorageError() when storageError != null:
return storageError(_that);case NostrSyncUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NostrSyncKeyMissing value)  keyMissing,required TResult Function( NostrSyncInvalidRelayUrl value)  invalidRelayUrl,required TResult Function( NostrSyncRelayUnreachable value)  relayUnreachable,required TResult Function( NostrSyncSignatureFailed value)  signatureFailed,required TResult Function( NostrSyncDecryptionFailed value)  decryptionFailed,required TResult Function( NostrSyncInvalidEvent value)  invalidEvent,required TResult Function( NostrSyncStorageError value)  storageError,required TResult Function( NostrSyncUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case NostrSyncKeyMissing():
return keyMissing(_that);case NostrSyncInvalidRelayUrl():
return invalidRelayUrl(_that);case NostrSyncRelayUnreachable():
return relayUnreachable(_that);case NostrSyncSignatureFailed():
return signatureFailed(_that);case NostrSyncDecryptionFailed():
return decryptionFailed(_that);case NostrSyncInvalidEvent():
return invalidEvent(_that);case NostrSyncStorageError():
return storageError(_that);case NostrSyncUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NostrSyncKeyMissing value)?  keyMissing,TResult? Function( NostrSyncInvalidRelayUrl value)?  invalidRelayUrl,TResult? Function( NostrSyncRelayUnreachable value)?  relayUnreachable,TResult? Function( NostrSyncSignatureFailed value)?  signatureFailed,TResult? Function( NostrSyncDecryptionFailed value)?  decryptionFailed,TResult? Function( NostrSyncInvalidEvent value)?  invalidEvent,TResult? Function( NostrSyncStorageError value)?  storageError,TResult? Function( NostrSyncUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case NostrSyncKeyMissing() when keyMissing != null:
return keyMissing(_that);case NostrSyncInvalidRelayUrl() when invalidRelayUrl != null:
return invalidRelayUrl(_that);case NostrSyncRelayUnreachable() when relayUnreachable != null:
return relayUnreachable(_that);case NostrSyncSignatureFailed() when signatureFailed != null:
return signatureFailed(_that);case NostrSyncDecryptionFailed() when decryptionFailed != null:
return decryptionFailed(_that);case NostrSyncInvalidEvent() when invalidEvent != null:
return invalidEvent(_that);case NostrSyncStorageError() when storageError != null:
return storageError(_that);case NostrSyncUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  keyMissing,TResult Function( String url)?  invalidRelayUrl,TResult Function( String url,  String? message)?  relayUnreachable,TResult Function( String? message)?  signatureFailed,TResult Function( String? message)?  decryptionFailed,TResult Function( String? message)?  invalidEvent,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NostrSyncKeyMissing() when keyMissing != null:
return keyMissing();case NostrSyncInvalidRelayUrl() when invalidRelayUrl != null:
return invalidRelayUrl(_that.url);case NostrSyncRelayUnreachable() when relayUnreachable != null:
return relayUnreachable(_that.url,_that.message);case NostrSyncSignatureFailed() when signatureFailed != null:
return signatureFailed(_that.message);case NostrSyncDecryptionFailed() when decryptionFailed != null:
return decryptionFailed(_that.message);case NostrSyncInvalidEvent() when invalidEvent != null:
return invalidEvent(_that.message);case NostrSyncStorageError() when storageError != null:
return storageError(_that.message);case NostrSyncUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  keyMissing,required TResult Function( String url)  invalidRelayUrl,required TResult Function( String url,  String? message)  relayUnreachable,required TResult Function( String? message)  signatureFailed,required TResult Function( String? message)  decryptionFailed,required TResult Function( String? message)  invalidEvent,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case NostrSyncKeyMissing():
return keyMissing();case NostrSyncInvalidRelayUrl():
return invalidRelayUrl(_that.url);case NostrSyncRelayUnreachable():
return relayUnreachable(_that.url,_that.message);case NostrSyncSignatureFailed():
return signatureFailed(_that.message);case NostrSyncDecryptionFailed():
return decryptionFailed(_that.message);case NostrSyncInvalidEvent():
return invalidEvent(_that.message);case NostrSyncStorageError():
return storageError(_that.message);case NostrSyncUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  keyMissing,TResult? Function( String url)?  invalidRelayUrl,TResult? Function( String url,  String? message)?  relayUnreachable,TResult? Function( String? message)?  signatureFailed,TResult? Function( String? message)?  decryptionFailed,TResult? Function( String? message)?  invalidEvent,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case NostrSyncKeyMissing() when keyMissing != null:
return keyMissing();case NostrSyncInvalidRelayUrl() when invalidRelayUrl != null:
return invalidRelayUrl(_that.url);case NostrSyncRelayUnreachable() when relayUnreachable != null:
return relayUnreachable(_that.url,_that.message);case NostrSyncSignatureFailed() when signatureFailed != null:
return signatureFailed(_that.message);case NostrSyncDecryptionFailed() when decryptionFailed != null:
return decryptionFailed(_that.message);case NostrSyncInvalidEvent() when invalidEvent != null:
return invalidEvent(_that.message);case NostrSyncStorageError() when storageError != null:
return storageError(_that.message);case NostrSyncUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NostrSyncKeyMissing extends NostrSyncFailure {
  const NostrSyncKeyMissing(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncKeyMissing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NostrSyncFailure.keyMissing()';
}


}




/// @nodoc


class NostrSyncInvalidRelayUrl extends NostrSyncFailure {
  const NostrSyncInvalidRelayUrl({required this.url}): super._();
  

 final  String url;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncInvalidRelayUrlCopyWith<NostrSyncInvalidRelayUrl> get copyWith => _$NostrSyncInvalidRelayUrlCopyWithImpl<NostrSyncInvalidRelayUrl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncInvalidRelayUrl&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'NostrSyncFailure.invalidRelayUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class $NostrSyncInvalidRelayUrlCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncInvalidRelayUrlCopyWith(NostrSyncInvalidRelayUrl value, $Res Function(NostrSyncInvalidRelayUrl) _then) = _$NostrSyncInvalidRelayUrlCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$NostrSyncInvalidRelayUrlCopyWithImpl<$Res>
    implements $NostrSyncInvalidRelayUrlCopyWith<$Res> {
  _$NostrSyncInvalidRelayUrlCopyWithImpl(this._self, this._then);

  final NostrSyncInvalidRelayUrl _self;
  final $Res Function(NostrSyncInvalidRelayUrl) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(NostrSyncInvalidRelayUrl(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NostrSyncRelayUnreachable extends NostrSyncFailure {
  const NostrSyncRelayUnreachable({required this.url, this.message}): super._();
  

 final  String url;
 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncRelayUnreachableCopyWith<NostrSyncRelayUnreachable> get copyWith => _$NostrSyncRelayUnreachableCopyWithImpl<NostrSyncRelayUnreachable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncRelayUnreachable&&(identical(other.url, url) || other.url == url)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,url,message);

@override
String toString() {
  return 'NostrSyncFailure.relayUnreachable(url: $url, message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncRelayUnreachableCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncRelayUnreachableCopyWith(NostrSyncRelayUnreachable value, $Res Function(NostrSyncRelayUnreachable) _then) = _$NostrSyncRelayUnreachableCopyWithImpl;
@useResult
$Res call({
 String url, String? message
});




}
/// @nodoc
class _$NostrSyncRelayUnreachableCopyWithImpl<$Res>
    implements $NostrSyncRelayUnreachableCopyWith<$Res> {
  _$NostrSyncRelayUnreachableCopyWithImpl(this._self, this._then);

  final NostrSyncRelayUnreachable _self;
  final $Res Function(NostrSyncRelayUnreachable) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,Object? message = freezed,}) {
  return _then(NostrSyncRelayUnreachable(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NostrSyncSignatureFailed extends NostrSyncFailure {
  const NostrSyncSignatureFailed({this.message}): super._();
  

 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncSignatureFailedCopyWith<NostrSyncSignatureFailed> get copyWith => _$NostrSyncSignatureFailedCopyWithImpl<NostrSyncSignatureFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncSignatureFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NostrSyncFailure.signatureFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncSignatureFailedCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncSignatureFailedCopyWith(NostrSyncSignatureFailed value, $Res Function(NostrSyncSignatureFailed) _then) = _$NostrSyncSignatureFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NostrSyncSignatureFailedCopyWithImpl<$Res>
    implements $NostrSyncSignatureFailedCopyWith<$Res> {
  _$NostrSyncSignatureFailedCopyWithImpl(this._self, this._then);

  final NostrSyncSignatureFailed _self;
  final $Res Function(NostrSyncSignatureFailed) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NostrSyncSignatureFailed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NostrSyncDecryptionFailed extends NostrSyncFailure {
  const NostrSyncDecryptionFailed({this.message}): super._();
  

 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncDecryptionFailedCopyWith<NostrSyncDecryptionFailed> get copyWith => _$NostrSyncDecryptionFailedCopyWithImpl<NostrSyncDecryptionFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncDecryptionFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NostrSyncFailure.decryptionFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncDecryptionFailedCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncDecryptionFailedCopyWith(NostrSyncDecryptionFailed value, $Res Function(NostrSyncDecryptionFailed) _then) = _$NostrSyncDecryptionFailedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NostrSyncDecryptionFailedCopyWithImpl<$Res>
    implements $NostrSyncDecryptionFailedCopyWith<$Res> {
  _$NostrSyncDecryptionFailedCopyWithImpl(this._self, this._then);

  final NostrSyncDecryptionFailed _self;
  final $Res Function(NostrSyncDecryptionFailed) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NostrSyncDecryptionFailed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NostrSyncInvalidEvent extends NostrSyncFailure {
  const NostrSyncInvalidEvent({this.message}): super._();
  

 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncInvalidEventCopyWith<NostrSyncInvalidEvent> get copyWith => _$NostrSyncInvalidEventCopyWithImpl<NostrSyncInvalidEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncInvalidEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NostrSyncFailure.invalidEvent(message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncInvalidEventCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncInvalidEventCopyWith(NostrSyncInvalidEvent value, $Res Function(NostrSyncInvalidEvent) _then) = _$NostrSyncInvalidEventCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NostrSyncInvalidEventCopyWithImpl<$Res>
    implements $NostrSyncInvalidEventCopyWith<$Res> {
  _$NostrSyncInvalidEventCopyWithImpl(this._self, this._then);

  final NostrSyncInvalidEvent _self;
  final $Res Function(NostrSyncInvalidEvent) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NostrSyncInvalidEvent(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NostrSyncStorageError extends NostrSyncFailure {
  const NostrSyncStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncStorageErrorCopyWith<NostrSyncStorageError> get copyWith => _$NostrSyncStorageErrorCopyWithImpl<NostrSyncStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NostrSyncFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncStorageErrorCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncStorageErrorCopyWith(NostrSyncStorageError value, $Res Function(NostrSyncStorageError) _then) = _$NostrSyncStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NostrSyncStorageErrorCopyWithImpl<$Res>
    implements $NostrSyncStorageErrorCopyWith<$Res> {
  _$NostrSyncStorageErrorCopyWithImpl(this._self, this._then);

  final NostrSyncStorageError _self;
  final $Res Function(NostrSyncStorageError) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NostrSyncStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NostrSyncUnexpected extends NostrSyncFailure {
  const NostrSyncUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NostrSyncUnexpectedCopyWith<NostrSyncUnexpected> get copyWith => _$NostrSyncUnexpectedCopyWithImpl<NostrSyncUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NostrSyncUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NostrSyncFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $NostrSyncUnexpectedCopyWith<$Res> implements $NostrSyncFailureCopyWith<$Res> {
  factory $NostrSyncUnexpectedCopyWith(NostrSyncUnexpected value, $Res Function(NostrSyncUnexpected) _then) = _$NostrSyncUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NostrSyncUnexpectedCopyWithImpl<$Res>
    implements $NostrSyncUnexpectedCopyWith<$Res> {
  _$NostrSyncUnexpectedCopyWithImpl(this._self, this._then);

  final NostrSyncUnexpected _self;
  final $Res Function(NostrSyncUnexpected) _then;

/// Create a copy of NostrSyncFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NostrSyncUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
