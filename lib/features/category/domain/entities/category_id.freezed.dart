// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryId {

 String get value;
/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<CategoryId> get copyWith => _$CategoryIdCopyWithImpl<CategoryId>(this as CategoryId, _$identity);

  /// Serializes this CategoryId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class $CategoryIdCopyWith<$Res>  {
  factory $CategoryIdCopyWith(CategoryId value, $Res Function(CategoryId) _then) = _$CategoryIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$CategoryIdCopyWithImpl<$Res>
    implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._self, this._then);

  final CategoryId _self;
  final $Res Function(CategoryId) _then;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryId].
extension CategoryIdPatterns on CategoryId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryId value)  $default,){
final _that = this;
switch (_that) {
case _CategoryId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryId value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryId() when $default != null:
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
case _CategoryId() when $default != null:
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
case _CategoryId():
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
case _CategoryId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryId extends CategoryId {
  const _CategoryId({required this.value}): super._();
  factory _CategoryId.fromJson(Map<String, dynamic> json) => _$CategoryIdFromJson(json);

@override final  String value;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryIdCopyWith<_CategoryId> get copyWith => __$CategoryIdCopyWithImpl<_CategoryId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class _$CategoryIdCopyWith<$Res> implements $CategoryIdCopyWith<$Res> {
  factory _$CategoryIdCopyWith(_CategoryId value, $Res Function(_CategoryId) _then) = __$CategoryIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$CategoryIdCopyWithImpl<$Res>
    implements _$CategoryIdCopyWith<$Res> {
  __$CategoryIdCopyWithImpl(this._self, this._then);

  final _CategoryId _self;
  final $Res Function(_CategoryId) _then;

/// Create a copy of CategoryId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_CategoryId(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
