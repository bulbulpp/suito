// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCategoryParams {

 String get name; String get icon; CategoryKind get kind; String? get colorHex;
/// Create a copy of CreateCategoryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCategoryParamsCopyWith<CreateCategoryParams> get copyWith => _$CreateCategoryParamsCopyWithImpl<CreateCategoryParams>(this as CreateCategoryParams, _$identity);

  /// Serializes this CreateCategoryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCategoryParams&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,icon,kind,colorHex);

@override
String toString() {
  return 'CreateCategoryParams(name: $name, icon: $icon, kind: $kind, colorHex: $colorHex)';
}


}

/// @nodoc
abstract mixin class $CreateCategoryParamsCopyWith<$Res>  {
  factory $CreateCategoryParamsCopyWith(CreateCategoryParams value, $Res Function(CreateCategoryParams) _then) = _$CreateCategoryParamsCopyWithImpl;
@useResult
$Res call({
 String name, String icon, CategoryKind kind, String? colorHex
});




}
/// @nodoc
class _$CreateCategoryParamsCopyWithImpl<$Res>
    implements $CreateCategoryParamsCopyWith<$Res> {
  _$CreateCategoryParamsCopyWithImpl(this._self, this._then);

  final CreateCategoryParams _self;
  final $Res Function(CreateCategoryParams) _then;

/// Create a copy of CreateCategoryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? icon = null,Object? kind = null,Object? colorHex = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,colorHex: freezed == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCategoryParams].
extension CreateCategoryParamsPatterns on CreateCategoryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCategoryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCategoryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCategoryParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCategoryParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String icon,  CategoryKind kind,  String? colorHex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCategoryParams() when $default != null:
return $default(_that.name,_that.icon,_that.kind,_that.colorHex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String icon,  CategoryKind kind,  String? colorHex)  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryParams():
return $default(_that.name,_that.icon,_that.kind,_that.colorHex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String icon,  CategoryKind kind,  String? colorHex)?  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryParams() when $default != null:
return $default(_that.name,_that.icon,_that.kind,_that.colorHex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCategoryParams implements CreateCategoryParams {
  const _CreateCategoryParams({required this.name, required this.icon, required this.kind, this.colorHex});
  factory _CreateCategoryParams.fromJson(Map<String, dynamic> json) => _$CreateCategoryParamsFromJson(json);

@override final  String name;
@override final  String icon;
@override final  CategoryKind kind;
@override final  String? colorHex;

/// Create a copy of CreateCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCategoryParamsCopyWith<_CreateCategoryParams> get copyWith => __$CreateCategoryParamsCopyWithImpl<_CreateCategoryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCategoryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCategoryParams&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,icon,kind,colorHex);

@override
String toString() {
  return 'CreateCategoryParams(name: $name, icon: $icon, kind: $kind, colorHex: $colorHex)';
}


}

/// @nodoc
abstract mixin class _$CreateCategoryParamsCopyWith<$Res> implements $CreateCategoryParamsCopyWith<$Res> {
  factory _$CreateCategoryParamsCopyWith(_CreateCategoryParams value, $Res Function(_CreateCategoryParams) _then) = __$CreateCategoryParamsCopyWithImpl;
@override @useResult
$Res call({
 String name, String icon, CategoryKind kind, String? colorHex
});




}
/// @nodoc
class __$CreateCategoryParamsCopyWithImpl<$Res>
    implements _$CreateCategoryParamsCopyWith<$Res> {
  __$CreateCategoryParamsCopyWithImpl(this._self, this._then);

  final _CreateCategoryParams _self;
  final $Res Function(_CreateCategoryParams) _then;

/// Create a copy of CreateCategoryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? icon = null,Object? kind = null,Object? colorHex = freezed,}) {
  return _then(_CreateCategoryParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,colorHex: freezed == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateCategoryResult {

 Category get category;
/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCategoryResultCopyWith<CreateCategoryResult> get copyWith => _$CreateCategoryResultCopyWithImpl<CreateCategoryResult>(this as CreateCategoryResult, _$identity);

  /// Serializes this CreateCategoryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCategoryResult&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'CreateCategoryResult(category: $category)';
}


}

/// @nodoc
abstract mixin class $CreateCategoryResultCopyWith<$Res>  {
  factory $CreateCategoryResultCopyWith(CreateCategoryResult value, $Res Function(CreateCategoryResult) _then) = _$CreateCategoryResultCopyWithImpl;
@useResult
$Res call({
 Category category
});


$CategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$CreateCategoryResultCopyWithImpl<$Res>
    implements $CreateCategoryResultCopyWith<$Res> {
  _$CreateCategoryResultCopyWithImpl(this._self, this._then);

  final CreateCategoryResult _self;
  final $Res Function(CreateCategoryResult) _then;

/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}
/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateCategoryResult].
extension CreateCategoryResultPatterns on CreateCategoryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCategoryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCategoryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCategoryResult value)  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCategoryResult value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Category category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCategoryResult() when $default != null:
return $default(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Category category)  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryResult():
return $default(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Category category)?  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryResult() when $default != null:
return $default(_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCategoryResult implements CreateCategoryResult {
  const _CreateCategoryResult({required this.category});
  factory _CreateCategoryResult.fromJson(Map<String, dynamic> json) => _$CreateCategoryResultFromJson(json);

@override final  Category category;

/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCategoryResultCopyWith<_CreateCategoryResult> get copyWith => __$CreateCategoryResultCopyWithImpl<_CreateCategoryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCategoryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCategoryResult&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'CreateCategoryResult(category: $category)';
}


}

/// @nodoc
abstract mixin class _$CreateCategoryResultCopyWith<$Res> implements $CreateCategoryResultCopyWith<$Res> {
  factory _$CreateCategoryResultCopyWith(_CreateCategoryResult value, $Res Function(_CreateCategoryResult) _then) = __$CreateCategoryResultCopyWithImpl;
@override @useResult
$Res call({
 Category category
});


@override $CategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$CreateCategoryResultCopyWithImpl<$Res>
    implements _$CreateCategoryResultCopyWith<$Res> {
  __$CreateCategoryResultCopyWithImpl(this._self, this._then);

  final _CreateCategoryResult _self;
  final $Res Function(_CreateCategoryResult) _then;

/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_CreateCategoryResult(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}

/// Create a copy of CreateCategoryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
