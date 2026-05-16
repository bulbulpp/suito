// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionId {

 String get value;
/// Create a copy of TransactionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<TransactionId> get copyWith => _$TransactionIdCopyWithImpl<TransactionId>(this as TransactionId, _$identity);

  /// Serializes this TransactionId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class $TransactionIdCopyWith<$Res>  {
  factory $TransactionIdCopyWith(TransactionId value, $Res Function(TransactionId) _then) = _$TransactionIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$TransactionIdCopyWithImpl<$Res>
    implements $TransactionIdCopyWith<$Res> {
  _$TransactionIdCopyWithImpl(this._self, this._then);

  final TransactionId _self;
  final $Res Function(TransactionId) _then;

/// Create a copy of TransactionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionId].
extension TransactionIdPatterns on TransactionId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionId value)  $default,){
final _that = this;
switch (_that) {
case _TransactionId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionId value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionId() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _TransactionId():
return $default(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _TransactionId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionId extends TransactionId {
  const _TransactionId({required this.value}): super._();
  factory _TransactionId.fromJson(Map<String, dynamic> json) => _$TransactionIdFromJson(json);

@override final  String value;

/// Create a copy of TransactionId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionIdCopyWith<_TransactionId> get copyWith => __$TransactionIdCopyWithImpl<_TransactionId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class _$TransactionIdCopyWith<$Res> implements $TransactionIdCopyWith<$Res> {
  factory _$TransactionIdCopyWith(_TransactionId value, $Res Function(_TransactionId) _then) = __$TransactionIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$TransactionIdCopyWithImpl<$Res>
    implements _$TransactionIdCopyWith<$Res> {
  __$TransactionIdCopyWithImpl(this._self, this._then);

  final _TransactionId _self;
  final $Res Function(_TransactionId) _then;

/// Create a copy of TransactionId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_TransactionId(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
