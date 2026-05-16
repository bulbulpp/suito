// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteCategoryParams {

 CategoryId get id;
/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCategoryParamsCopyWith<DeleteCategoryParams> get copyWith => _$DeleteCategoryParamsCopyWithImpl<DeleteCategoryParams>(this as DeleteCategoryParams, _$identity);

  /// Serializes this DeleteCategoryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCategoryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteCategoryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteCategoryParamsCopyWith<$Res>  {
  factory $DeleteCategoryParamsCopyWith(DeleteCategoryParams value, $Res Function(DeleteCategoryParams) _then) = _$DeleteCategoryParamsCopyWithImpl;
@useResult
$Res call({
 CategoryId id
});


$CategoryIdCopyWith<$Res> get id;

}
/// @nodoc
class _$DeleteCategoryParamsCopyWithImpl<$Res>
    implements $DeleteCategoryParamsCopyWith<$Res> {
  _$DeleteCategoryParamsCopyWithImpl(this._self, this._then);

  final DeleteCategoryParams _self;
  final $Res Function(DeleteCategoryParams) _then;

/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CategoryId,
  ));
}
/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get id {
  
  return $CategoryIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeleteCategoryParams].
extension DeleteCategoryParamsPatterns on DeleteCategoryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteCategoryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteCategoryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteCategoryParams value)  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteCategoryParams value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryId id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteCategoryParams() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryId id)  $default,) {final _that = this;
switch (_that) {
case _DeleteCategoryParams():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryId id)?  $default,) {final _that = this;
switch (_that) {
case _DeleteCategoryParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteCategoryParams implements DeleteCategoryParams {
  const _DeleteCategoryParams({required this.id});
  factory _DeleteCategoryParams.fromJson(Map<String, dynamic> json) => _$DeleteCategoryParamsFromJson(json);

@override final  CategoryId id;

/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCategoryParamsCopyWith<_DeleteCategoryParams> get copyWith => __$DeleteCategoryParamsCopyWithImpl<_DeleteCategoryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteCategoryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCategoryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteCategoryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCategoryParamsCopyWith<$Res> implements $DeleteCategoryParamsCopyWith<$Res> {
  factory _$DeleteCategoryParamsCopyWith(_DeleteCategoryParams value, $Res Function(_DeleteCategoryParams) _then) = __$DeleteCategoryParamsCopyWithImpl;
@override @useResult
$Res call({
 CategoryId id
});


@override $CategoryIdCopyWith<$Res> get id;

}
/// @nodoc
class __$DeleteCategoryParamsCopyWithImpl<$Res>
    implements _$DeleteCategoryParamsCopyWith<$Res> {
  __$DeleteCategoryParamsCopyWithImpl(this._self, this._then);

  final _DeleteCategoryParams _self;
  final $Res Function(_DeleteCategoryParams) _then;

/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCategoryParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CategoryId,
  ));
}

/// Create a copy of DeleteCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get id {
  
  return $CategoryIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// @nodoc
mixin _$DeleteCategoryResult {

 CategoryId get deletedId;
/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCategoryResultCopyWith<DeleteCategoryResult> get copyWith => _$DeleteCategoryResultCopyWithImpl<DeleteCategoryResult>(this as DeleteCategoryResult, _$identity);

  /// Serializes this DeleteCategoryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCategoryResult&&(identical(other.deletedId, deletedId) || other.deletedId == deletedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedId);

@override
String toString() {
  return 'DeleteCategoryResult(deletedId: $deletedId)';
}


}

/// @nodoc
abstract mixin class $DeleteCategoryResultCopyWith<$Res>  {
  factory $DeleteCategoryResultCopyWith(DeleteCategoryResult value, $Res Function(DeleteCategoryResult) _then) = _$DeleteCategoryResultCopyWithImpl;
@useResult
$Res call({
 CategoryId deletedId
});


$CategoryIdCopyWith<$Res> get deletedId;

}
/// @nodoc
class _$DeleteCategoryResultCopyWithImpl<$Res>
    implements $DeleteCategoryResultCopyWith<$Res> {
  _$DeleteCategoryResultCopyWithImpl(this._self, this._then);

  final DeleteCategoryResult _self;
  final $Res Function(DeleteCategoryResult) _then;

/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deletedId = null,}) {
  return _then(_self.copyWith(
deletedId: null == deletedId ? _self.deletedId : deletedId // ignore: cast_nullable_to_non_nullable
as CategoryId,
  ));
}
/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get deletedId {
  
  return $CategoryIdCopyWith<$Res>(_self.deletedId, (value) {
    return _then(_self.copyWith(deletedId: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeleteCategoryResult].
extension DeleteCategoryResultPatterns on DeleteCategoryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteCategoryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteCategoryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteCategoryResult value)  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteCategoryResult value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryId deletedId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteCategoryResult() when $default != null:
return $default(_that.deletedId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryId deletedId)  $default,) {final _that = this;
switch (_that) {
case _DeleteCategoryResult():
return $default(_that.deletedId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryId deletedId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteCategoryResult() when $default != null:
return $default(_that.deletedId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteCategoryResult implements DeleteCategoryResult {
  const _DeleteCategoryResult({required this.deletedId});
  factory _DeleteCategoryResult.fromJson(Map<String, dynamic> json) => _$DeleteCategoryResultFromJson(json);

@override final  CategoryId deletedId;

/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCategoryResultCopyWith<_DeleteCategoryResult> get copyWith => __$DeleteCategoryResultCopyWithImpl<_DeleteCategoryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteCategoryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCategoryResult&&(identical(other.deletedId, deletedId) || other.deletedId == deletedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedId);

@override
String toString() {
  return 'DeleteCategoryResult(deletedId: $deletedId)';
}


}

/// @nodoc
abstract mixin class _$DeleteCategoryResultCopyWith<$Res> implements $DeleteCategoryResultCopyWith<$Res> {
  factory _$DeleteCategoryResultCopyWith(_DeleteCategoryResult value, $Res Function(_DeleteCategoryResult) _then) = __$DeleteCategoryResultCopyWithImpl;
@override @useResult
$Res call({
 CategoryId deletedId
});


@override $CategoryIdCopyWith<$Res> get deletedId;

}
/// @nodoc
class __$DeleteCategoryResultCopyWithImpl<$Res>
    implements _$DeleteCategoryResultCopyWith<$Res> {
  __$DeleteCategoryResultCopyWithImpl(this._self, this._then);

  final _DeleteCategoryResult _self;
  final $Res Function(_DeleteCategoryResult) _then;

/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deletedId = null,}) {
  return _then(_DeleteCategoryResult(
deletedId: null == deletedId ? _self.deletedId : deletedId // ignore: cast_nullable_to_non_nullable
as CategoryId,
  ));
}

/// Create a copy of DeleteCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryIdCopyWith<$Res> get deletedId {
  
  return $CategoryIdCopyWith<$Res>(_self.deletedId, (value) {
    return _then(_self.copyWith(deletedId: value));
  });
}
}

// dart format on
