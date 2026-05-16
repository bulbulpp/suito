// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_categories_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListCategoriesParams {

 CategoryKind? get kind; bool get includeHidden;
/// Create a copy of ListCategoriesParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCategoriesParamsCopyWith<ListCategoriesParams> get copyWith => _$ListCategoriesParamsCopyWithImpl<ListCategoriesParams>(this as ListCategoriesParams, _$identity);

  /// Serializes this ListCategoriesParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCategoriesParams&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.includeHidden, includeHidden) || other.includeHidden == includeHidden));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,includeHidden);

@override
String toString() {
  return 'ListCategoriesParams(kind: $kind, includeHidden: $includeHidden)';
}


}

/// @nodoc
abstract mixin class $ListCategoriesParamsCopyWith<$Res>  {
  factory $ListCategoriesParamsCopyWith(ListCategoriesParams value, $Res Function(ListCategoriesParams) _then) = _$ListCategoriesParamsCopyWithImpl;
@useResult
$Res call({
 CategoryKind? kind, bool includeHidden
});




}
/// @nodoc
class _$ListCategoriesParamsCopyWithImpl<$Res>
    implements $ListCategoriesParamsCopyWith<$Res> {
  _$ListCategoriesParamsCopyWithImpl(this._self, this._then);

  final ListCategoriesParams _self;
  final $Res Function(ListCategoriesParams) _then;

/// Create a copy of ListCategoriesParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = freezed,Object? includeHidden = null,}) {
  return _then(_self.copyWith(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind?,includeHidden: null == includeHidden ? _self.includeHidden : includeHidden // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ListCategoriesParams].
extension ListCategoriesParamsPatterns on ListCategoriesParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListCategoriesParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListCategoriesParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListCategoriesParams value)  $default,){
final _that = this;
switch (_that) {
case _ListCategoriesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListCategoriesParams value)?  $default,){
final _that = this;
switch (_that) {
case _ListCategoriesParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryKind? kind,  bool includeHidden)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListCategoriesParams() when $default != null:
return $default(_that.kind,_that.includeHidden);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryKind? kind,  bool includeHidden)  $default,) {final _that = this;
switch (_that) {
case _ListCategoriesParams():
return $default(_that.kind,_that.includeHidden);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryKind? kind,  bool includeHidden)?  $default,) {final _that = this;
switch (_that) {
case _ListCategoriesParams() when $default != null:
return $default(_that.kind,_that.includeHidden);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListCategoriesParams implements ListCategoriesParams {
  const _ListCategoriesParams({this.kind, this.includeHidden = false});
  factory _ListCategoriesParams.fromJson(Map<String, dynamic> json) => _$ListCategoriesParamsFromJson(json);

@override final  CategoryKind? kind;
@override@JsonKey() final  bool includeHidden;

/// Create a copy of ListCategoriesParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCategoriesParamsCopyWith<_ListCategoriesParams> get copyWith => __$ListCategoriesParamsCopyWithImpl<_ListCategoriesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListCategoriesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCategoriesParams&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.includeHidden, includeHidden) || other.includeHidden == includeHidden));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,includeHidden);

@override
String toString() {
  return 'ListCategoriesParams(kind: $kind, includeHidden: $includeHidden)';
}


}

/// @nodoc
abstract mixin class _$ListCategoriesParamsCopyWith<$Res> implements $ListCategoriesParamsCopyWith<$Res> {
  factory _$ListCategoriesParamsCopyWith(_ListCategoriesParams value, $Res Function(_ListCategoriesParams) _then) = __$ListCategoriesParamsCopyWithImpl;
@override @useResult
$Res call({
 CategoryKind? kind, bool includeHidden
});




}
/// @nodoc
class __$ListCategoriesParamsCopyWithImpl<$Res>
    implements _$ListCategoriesParamsCopyWith<$Res> {
  __$ListCategoriesParamsCopyWithImpl(this._self, this._then);

  final _ListCategoriesParams _self;
  final $Res Function(_ListCategoriesParams) _then;

/// Create a copy of ListCategoriesParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = freezed,Object? includeHidden = null,}) {
  return _then(_ListCategoriesParams(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind?,includeHidden: null == includeHidden ? _self.includeHidden : includeHidden // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ListCategoriesResult {

 List<Category> get items;
/// Create a copy of ListCategoriesResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCategoriesResultCopyWith<ListCategoriesResult> get copyWith => _$ListCategoriesResultCopyWithImpl<ListCategoriesResult>(this as ListCategoriesResult, _$identity);

  /// Serializes this ListCategoriesResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCategoriesResult&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ListCategoriesResult(items: $items)';
}


}

/// @nodoc
abstract mixin class $ListCategoriesResultCopyWith<$Res>  {
  factory $ListCategoriesResultCopyWith(ListCategoriesResult value, $Res Function(ListCategoriesResult) _then) = _$ListCategoriesResultCopyWithImpl;
@useResult
$Res call({
 List<Category> items
});




}
/// @nodoc
class _$ListCategoriesResultCopyWithImpl<$Res>
    implements $ListCategoriesResultCopyWith<$Res> {
  _$ListCategoriesResultCopyWithImpl(this._self, this._then);

  final ListCategoriesResult _self;
  final $Res Function(ListCategoriesResult) _then;

/// Create a copy of ListCategoriesResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListCategoriesResult].
extension ListCategoriesResultPatterns on ListCategoriesResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListCategoriesResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListCategoriesResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListCategoriesResult value)  $default,){
final _that = this;
switch (_that) {
case _ListCategoriesResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListCategoriesResult value)?  $default,){
final _that = this;
switch (_that) {
case _ListCategoriesResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Category> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListCategoriesResult() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Category> items)  $default,) {final _that = this;
switch (_that) {
case _ListCategoriesResult():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Category> items)?  $default,) {final _that = this;
switch (_that) {
case _ListCategoriesResult() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListCategoriesResult implements ListCategoriesResult {
  const _ListCategoriesResult({required final  List<Category> items}): _items = items;
  factory _ListCategoriesResult.fromJson(Map<String, dynamic> json) => _$ListCategoriesResultFromJson(json);

 final  List<Category> _items;
@override List<Category> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ListCategoriesResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCategoriesResultCopyWith<_ListCategoriesResult> get copyWith => __$ListCategoriesResultCopyWithImpl<_ListCategoriesResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListCategoriesResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCategoriesResult&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ListCategoriesResult(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ListCategoriesResultCopyWith<$Res> implements $ListCategoriesResultCopyWith<$Res> {
  factory _$ListCategoriesResultCopyWith(_ListCategoriesResult value, $Res Function(_ListCategoriesResult) _then) = __$ListCategoriesResultCopyWithImpl;
@override @useResult
$Res call({
 List<Category> items
});




}
/// @nodoc
class __$ListCategoriesResultCopyWithImpl<$Res>
    implements _$ListCategoriesResultCopyWith<$Res> {
  __$ListCategoriesResultCopyWithImpl(this._self, this._then);

  final _ListCategoriesResult _self;
  final $Res Function(_ListCategoriesResult) _then;

/// Create a copy of ListCategoriesResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ListCategoriesResult(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

// dart format on
