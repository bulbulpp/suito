// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_transaction_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteTransactionParams {

 TransactionId get id;
/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTransactionParamsCopyWith<DeleteTransactionParams> get copyWith => _$DeleteTransactionParamsCopyWithImpl<DeleteTransactionParams>(this as DeleteTransactionParams, _$identity);

  /// Serializes this DeleteTransactionParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTransactionParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTransactionParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTransactionParamsCopyWith<$Res>  {
  factory $DeleteTransactionParamsCopyWith(DeleteTransactionParams value, $Res Function(DeleteTransactionParams) _then) = _$DeleteTransactionParamsCopyWithImpl;
@useResult
$Res call({
 TransactionId id
});


$TransactionIdCopyWith<$Res> get id;

}
/// @nodoc
class _$DeleteTransactionParamsCopyWithImpl<$Res>
    implements $DeleteTransactionParamsCopyWith<$Res> {
  _$DeleteTransactionParamsCopyWithImpl(this._self, this._then);

  final DeleteTransactionParams _self;
  final $Res Function(DeleteTransactionParams) _then;

/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,
  ));
}
/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get id {
  
  return $TransactionIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeleteTransactionParams].
extension DeleteTransactionParamsPatterns on DeleteTransactionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteTransactionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteTransactionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteTransactionParams value)  $default,){
final _that = this;
switch (_that) {
case _DeleteTransactionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteTransactionParams value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteTransactionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionId id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteTransactionParams() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionId id)  $default,) {final _that = this;
switch (_that) {
case _DeleteTransactionParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionId id)?  $default,) {final _that = this;
switch (_that) {
case _DeleteTransactionParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteTransactionParams implements DeleteTransactionParams {
  const _DeleteTransactionParams({required this.id});
  factory _DeleteTransactionParams.fromJson(Map<String, dynamic> json) => _$DeleteTransactionParamsFromJson(json);

@override final  TransactionId id;

/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTransactionParamsCopyWith<_DeleteTransactionParams> get copyWith => __$DeleteTransactionParamsCopyWithImpl<_DeleteTransactionParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteTransactionParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTransactionParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTransactionParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTransactionParamsCopyWith<$Res> implements $DeleteTransactionParamsCopyWith<$Res> {
  factory _$DeleteTransactionParamsCopyWith(_DeleteTransactionParams value, $Res Function(_DeleteTransactionParams) _then) = __$DeleteTransactionParamsCopyWithImpl;
@override @useResult
$Res call({
 TransactionId id
});


@override $TransactionIdCopyWith<$Res> get id;

}
/// @nodoc
class __$DeleteTransactionParamsCopyWithImpl<$Res>
    implements _$DeleteTransactionParamsCopyWith<$Res> {
  __$DeleteTransactionParamsCopyWithImpl(this._self, this._then);

  final _DeleteTransactionParams _self;
  final $Res Function(_DeleteTransactionParams) _then;

/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTransactionParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,
  ));
}

/// Create a copy of DeleteTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get id {
  
  return $TransactionIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// @nodoc
mixin _$DeleteTransactionResult {

 TransactionId get deletedId;
/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTransactionResultCopyWith<DeleteTransactionResult> get copyWith => _$DeleteTransactionResultCopyWithImpl<DeleteTransactionResult>(this as DeleteTransactionResult, _$identity);

  /// Serializes this DeleteTransactionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTransactionResult&&(identical(other.deletedId, deletedId) || other.deletedId == deletedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedId);

@override
String toString() {
  return 'DeleteTransactionResult(deletedId: $deletedId)';
}


}

/// @nodoc
abstract mixin class $DeleteTransactionResultCopyWith<$Res>  {
  factory $DeleteTransactionResultCopyWith(DeleteTransactionResult value, $Res Function(DeleteTransactionResult) _then) = _$DeleteTransactionResultCopyWithImpl;
@useResult
$Res call({
 TransactionId deletedId
});


$TransactionIdCopyWith<$Res> get deletedId;

}
/// @nodoc
class _$DeleteTransactionResultCopyWithImpl<$Res>
    implements $DeleteTransactionResultCopyWith<$Res> {
  _$DeleteTransactionResultCopyWithImpl(this._self, this._then);

  final DeleteTransactionResult _self;
  final $Res Function(DeleteTransactionResult) _then;

/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deletedId = null,}) {
  return _then(_self.copyWith(
deletedId: null == deletedId ? _self.deletedId : deletedId // ignore: cast_nullable_to_non_nullable
as TransactionId,
  ));
}
/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get deletedId {
  
  return $TransactionIdCopyWith<$Res>(_self.deletedId, (value) {
    return _then(_self.copyWith(deletedId: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeleteTransactionResult].
extension DeleteTransactionResultPatterns on DeleteTransactionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteTransactionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteTransactionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteTransactionResult value)  $default,){
final _that = this;
switch (_that) {
case _DeleteTransactionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteTransactionResult value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteTransactionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionId deletedId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteTransactionResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionId deletedId)  $default,) {final _that = this;
switch (_that) {
case _DeleteTransactionResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionId deletedId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteTransactionResult() when $default != null:
return $default(_that.deletedId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteTransactionResult implements DeleteTransactionResult {
  const _DeleteTransactionResult({required this.deletedId});
  factory _DeleteTransactionResult.fromJson(Map<String, dynamic> json) => _$DeleteTransactionResultFromJson(json);

@override final  TransactionId deletedId;

/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTransactionResultCopyWith<_DeleteTransactionResult> get copyWith => __$DeleteTransactionResultCopyWithImpl<_DeleteTransactionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteTransactionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTransactionResult&&(identical(other.deletedId, deletedId) || other.deletedId == deletedId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedId);

@override
String toString() {
  return 'DeleteTransactionResult(deletedId: $deletedId)';
}


}

/// @nodoc
abstract mixin class _$DeleteTransactionResultCopyWith<$Res> implements $DeleteTransactionResultCopyWith<$Res> {
  factory _$DeleteTransactionResultCopyWith(_DeleteTransactionResult value, $Res Function(_DeleteTransactionResult) _then) = __$DeleteTransactionResultCopyWithImpl;
@override @useResult
$Res call({
 TransactionId deletedId
});


@override $TransactionIdCopyWith<$Res> get deletedId;

}
/// @nodoc
class __$DeleteTransactionResultCopyWithImpl<$Res>
    implements _$DeleteTransactionResultCopyWith<$Res> {
  __$DeleteTransactionResultCopyWithImpl(this._self, this._then);

  final _DeleteTransactionResult _self;
  final $Res Function(_DeleteTransactionResult) _then;

/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deletedId = null,}) {
  return _then(_DeleteTransactionResult(
deletedId: null == deletedId ? _self.deletedId : deletedId // ignore: cast_nullable_to_non_nullable
as TransactionId,
  ));
}

/// Create a copy of DeleteTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionIdCopyWith<$Res> get deletedId {
  
  return $TransactionIdCopyWith<$Res>(_self.deletedId, (value) {
    return _then(_self.copyWith(deletedId: value));
  });
}
}

// dart format on
