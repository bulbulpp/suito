// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExchangeFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExchangeFailure()';
}


}

/// @nodoc
class $ExchangeFailureCopyWith<$Res>  {
$ExchangeFailureCopyWith(ExchangeFailure _, $Res Function(ExchangeFailure) __);
}


/// Adds pattern-matching-related methods to [ExchangeFailure].
extension ExchangeFailurePatterns on ExchangeFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExchangeNetworkError value)?  network,TResult Function( ExchangeAllProvidersFailed value)?  allProvidersFailed,TResult Function( ExchangeInvalidResponse value)?  invalidResponse,TResult Function( ExchangeRateLimited value)?  rateLimited,TResult Function( ExchangeUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExchangeNetworkError() when network != null:
return network(_that);case ExchangeAllProvidersFailed() when allProvidersFailed != null:
return allProvidersFailed(_that);case ExchangeInvalidResponse() when invalidResponse != null:
return invalidResponse(_that);case ExchangeRateLimited() when rateLimited != null:
return rateLimited(_that);case ExchangeUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExchangeNetworkError value)  network,required TResult Function( ExchangeAllProvidersFailed value)  allProvidersFailed,required TResult Function( ExchangeInvalidResponse value)  invalidResponse,required TResult Function( ExchangeRateLimited value)  rateLimited,required TResult Function( ExchangeUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case ExchangeNetworkError():
return network(_that);case ExchangeAllProvidersFailed():
return allProvidersFailed(_that);case ExchangeInvalidResponse():
return invalidResponse(_that);case ExchangeRateLimited():
return rateLimited(_that);case ExchangeUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExchangeNetworkError value)?  network,TResult? Function( ExchangeAllProvidersFailed value)?  allProvidersFailed,TResult? Function( ExchangeInvalidResponse value)?  invalidResponse,TResult? Function( ExchangeRateLimited value)?  rateLimited,TResult? Function( ExchangeUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case ExchangeNetworkError() when network != null:
return network(_that);case ExchangeAllProvidersFailed() when allProvidersFailed != null:
return allProvidersFailed(_that);case ExchangeInvalidResponse() when invalidResponse != null:
return invalidResponse(_that);case ExchangeRateLimited() when rateLimited != null:
return rateLimited(_that);case ExchangeUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  network,TResult Function( List<String> attemptedProviders)?  allProvidersFailed,TResult Function( String provider,  String? message)?  invalidResponse,TResult Function( String? provider)?  rateLimited,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExchangeNetworkError() when network != null:
return network(_that.message);case ExchangeAllProvidersFailed() when allProvidersFailed != null:
return allProvidersFailed(_that.attemptedProviders);case ExchangeInvalidResponse() when invalidResponse != null:
return invalidResponse(_that.provider,_that.message);case ExchangeRateLimited() when rateLimited != null:
return rateLimited(_that.provider);case ExchangeUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  network,required TResult Function( List<String> attemptedProviders)  allProvidersFailed,required TResult Function( String provider,  String? message)  invalidResponse,required TResult Function( String? provider)  rateLimited,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case ExchangeNetworkError():
return network(_that.message);case ExchangeAllProvidersFailed():
return allProvidersFailed(_that.attemptedProviders);case ExchangeInvalidResponse():
return invalidResponse(_that.provider,_that.message);case ExchangeRateLimited():
return rateLimited(_that.provider);case ExchangeUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  network,TResult? Function( List<String> attemptedProviders)?  allProvidersFailed,TResult? Function( String provider,  String? message)?  invalidResponse,TResult? Function( String? provider)?  rateLimited,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case ExchangeNetworkError() when network != null:
return network(_that.message);case ExchangeAllProvidersFailed() when allProvidersFailed != null:
return allProvidersFailed(_that.attemptedProviders);case ExchangeInvalidResponse() when invalidResponse != null:
return invalidResponse(_that.provider,_that.message);case ExchangeRateLimited() when rateLimited != null:
return rateLimited(_that.provider);case ExchangeUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ExchangeNetworkError extends ExchangeFailure {
  const ExchangeNetworkError({this.message}): super._();
  

 final  String? message;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeNetworkErrorCopyWith<ExchangeNetworkError> get copyWith => _$ExchangeNetworkErrorCopyWithImpl<ExchangeNetworkError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeNetworkError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ExchangeFailure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class $ExchangeNetworkErrorCopyWith<$Res> implements $ExchangeFailureCopyWith<$Res> {
  factory $ExchangeNetworkErrorCopyWith(ExchangeNetworkError value, $Res Function(ExchangeNetworkError) _then) = _$ExchangeNetworkErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ExchangeNetworkErrorCopyWithImpl<$Res>
    implements $ExchangeNetworkErrorCopyWith<$Res> {
  _$ExchangeNetworkErrorCopyWithImpl(this._self, this._then);

  final ExchangeNetworkError _self;
  final $Res Function(ExchangeNetworkError) _then;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ExchangeNetworkError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ExchangeAllProvidersFailed extends ExchangeFailure {
  const ExchangeAllProvidersFailed({required final  List<String> attemptedProviders}): _attemptedProviders = attemptedProviders,super._();
  

 final  List<String> _attemptedProviders;
 List<String> get attemptedProviders {
  if (_attemptedProviders is EqualUnmodifiableListView) return _attemptedProviders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attemptedProviders);
}


/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeAllProvidersFailedCopyWith<ExchangeAllProvidersFailed> get copyWith => _$ExchangeAllProvidersFailedCopyWithImpl<ExchangeAllProvidersFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeAllProvidersFailed&&const DeepCollectionEquality().equals(other._attemptedProviders, _attemptedProviders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attemptedProviders));

@override
String toString() {
  return 'ExchangeFailure.allProvidersFailed(attemptedProviders: $attemptedProviders)';
}


}

/// @nodoc
abstract mixin class $ExchangeAllProvidersFailedCopyWith<$Res> implements $ExchangeFailureCopyWith<$Res> {
  factory $ExchangeAllProvidersFailedCopyWith(ExchangeAllProvidersFailed value, $Res Function(ExchangeAllProvidersFailed) _then) = _$ExchangeAllProvidersFailedCopyWithImpl;
@useResult
$Res call({
 List<String> attemptedProviders
});




}
/// @nodoc
class _$ExchangeAllProvidersFailedCopyWithImpl<$Res>
    implements $ExchangeAllProvidersFailedCopyWith<$Res> {
  _$ExchangeAllProvidersFailedCopyWithImpl(this._self, this._then);

  final ExchangeAllProvidersFailed _self;
  final $Res Function(ExchangeAllProvidersFailed) _then;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attemptedProviders = null,}) {
  return _then(ExchangeAllProvidersFailed(
attemptedProviders: null == attemptedProviders ? _self._attemptedProviders : attemptedProviders // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class ExchangeInvalidResponse extends ExchangeFailure {
  const ExchangeInvalidResponse({required this.provider, this.message}): super._();
  

 final  String provider;
 final  String? message;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeInvalidResponseCopyWith<ExchangeInvalidResponse> get copyWith => _$ExchangeInvalidResponseCopyWithImpl<ExchangeInvalidResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeInvalidResponse&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,provider,message);

@override
String toString() {
  return 'ExchangeFailure.invalidResponse(provider: $provider, message: $message)';
}


}

/// @nodoc
abstract mixin class $ExchangeInvalidResponseCopyWith<$Res> implements $ExchangeFailureCopyWith<$Res> {
  factory $ExchangeInvalidResponseCopyWith(ExchangeInvalidResponse value, $Res Function(ExchangeInvalidResponse) _then) = _$ExchangeInvalidResponseCopyWithImpl;
@useResult
$Res call({
 String provider, String? message
});




}
/// @nodoc
class _$ExchangeInvalidResponseCopyWithImpl<$Res>
    implements $ExchangeInvalidResponseCopyWith<$Res> {
  _$ExchangeInvalidResponseCopyWithImpl(this._self, this._then);

  final ExchangeInvalidResponse _self;
  final $Res Function(ExchangeInvalidResponse) _then;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? message = freezed,}) {
  return _then(ExchangeInvalidResponse(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ExchangeRateLimited extends ExchangeFailure {
  const ExchangeRateLimited({this.provider}): super._();
  

 final  String? provider;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeRateLimitedCopyWith<ExchangeRateLimited> get copyWith => _$ExchangeRateLimitedCopyWithImpl<ExchangeRateLimited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeRateLimited&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,provider);

@override
String toString() {
  return 'ExchangeFailure.rateLimited(provider: $provider)';
}


}

/// @nodoc
abstract mixin class $ExchangeRateLimitedCopyWith<$Res> implements $ExchangeFailureCopyWith<$Res> {
  factory $ExchangeRateLimitedCopyWith(ExchangeRateLimited value, $Res Function(ExchangeRateLimited) _then) = _$ExchangeRateLimitedCopyWithImpl;
@useResult
$Res call({
 String? provider
});




}
/// @nodoc
class _$ExchangeRateLimitedCopyWithImpl<$Res>
    implements $ExchangeRateLimitedCopyWith<$Res> {
  _$ExchangeRateLimitedCopyWithImpl(this._self, this._then);

  final ExchangeRateLimited _self;
  final $Res Function(ExchangeRateLimited) _then;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? provider = freezed,}) {
  return _then(ExchangeRateLimited(
provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ExchangeUnexpected extends ExchangeFailure {
  const ExchangeUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeUnexpectedCopyWith<ExchangeUnexpected> get copyWith => _$ExchangeUnexpectedCopyWithImpl<ExchangeUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ExchangeFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $ExchangeUnexpectedCopyWith<$Res> implements $ExchangeFailureCopyWith<$Res> {
  factory $ExchangeUnexpectedCopyWith(ExchangeUnexpected value, $Res Function(ExchangeUnexpected) _then) = _$ExchangeUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ExchangeUnexpectedCopyWithImpl<$Res>
    implements $ExchangeUnexpectedCopyWith<$Res> {
  _$ExchangeUnexpectedCopyWithImpl(this._self, this._then);

  final ExchangeUnexpected _self;
  final $Res Function(ExchangeUnexpected) _then;

/// Create a copy of ExchangeFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ExchangeUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
