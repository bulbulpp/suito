// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryFailure()';
}


}

/// @nodoc
class $CategoryFailureCopyWith<$Res>  {
$CategoryFailureCopyWith(CategoryFailure _, $Res Function(CategoryFailure) __);
}


/// Adds pattern-matching-related methods to [CategoryFailure].
extension CategoryFailurePatterns on CategoryFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryNotFound value)?  notFound,TResult Function( CategoryInvalidInput value)?  invalidInput,TResult Function( CategoryDuplicate value)?  duplicate,TResult Function( CategoryCannotDeleteDefault value)?  cannotDeleteDefault,TResult Function( CategoryStillReferenced value)?  stillReferenced,TResult Function( CategoryStorageError value)?  storageError,TResult Function( CategoryUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryNotFound() when notFound != null:
return notFound(_that);case CategoryInvalidInput() when invalidInput != null:
return invalidInput(_that);case CategoryDuplicate() when duplicate != null:
return duplicate(_that);case CategoryCannotDeleteDefault() when cannotDeleteDefault != null:
return cannotDeleteDefault(_that);case CategoryStillReferenced() when stillReferenced != null:
return stillReferenced(_that);case CategoryStorageError() when storageError != null:
return storageError(_that);case CategoryUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryNotFound value)  notFound,required TResult Function( CategoryInvalidInput value)  invalidInput,required TResult Function( CategoryDuplicate value)  duplicate,required TResult Function( CategoryCannotDeleteDefault value)  cannotDeleteDefault,required TResult Function( CategoryStillReferenced value)  stillReferenced,required TResult Function( CategoryStorageError value)  storageError,required TResult Function( CategoryUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case CategoryNotFound():
return notFound(_that);case CategoryInvalidInput():
return invalidInput(_that);case CategoryDuplicate():
return duplicate(_that);case CategoryCannotDeleteDefault():
return cannotDeleteDefault(_that);case CategoryStillReferenced():
return stillReferenced(_that);case CategoryStorageError():
return storageError(_that);case CategoryUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryNotFound value)?  notFound,TResult? Function( CategoryInvalidInput value)?  invalidInput,TResult? Function( CategoryDuplicate value)?  duplicate,TResult? Function( CategoryCannotDeleteDefault value)?  cannotDeleteDefault,TResult? Function( CategoryStillReferenced value)?  stillReferenced,TResult? Function( CategoryStorageError value)?  storageError,TResult? Function( CategoryUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case CategoryNotFound() when notFound != null:
return notFound(_that);case CategoryInvalidInput() when invalidInput != null:
return invalidInput(_that);case CategoryDuplicate() when duplicate != null:
return duplicate(_that);case CategoryCannotDeleteDefault() when cannotDeleteDefault != null:
return cannotDeleteDefault(_that);case CategoryStillReferenced() when stillReferenced != null:
return stillReferenced(_that);case CategoryStorageError() when storageError != null:
return storageError(_that);case CategoryUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notFound,TResult Function( String reason)?  invalidInput,TResult Function( String name)?  duplicate,TResult Function()?  cannotDeleteDefault,TResult Function( int transactionCount)?  stillReferenced,TResult Function( String? message)?  storageError,TResult Function( String? message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryNotFound() when notFound != null:
return notFound();case CategoryInvalidInput() when invalidInput != null:
return invalidInput(_that.reason);case CategoryDuplicate() when duplicate != null:
return duplicate(_that.name);case CategoryCannotDeleteDefault() when cannotDeleteDefault != null:
return cannotDeleteDefault();case CategoryStillReferenced() when stillReferenced != null:
return stillReferenced(_that.transactionCount);case CategoryStorageError() when storageError != null:
return storageError(_that.message);case CategoryUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notFound,required TResult Function( String reason)  invalidInput,required TResult Function( String name)  duplicate,required TResult Function()  cannotDeleteDefault,required TResult Function( int transactionCount)  stillReferenced,required TResult Function( String? message)  storageError,required TResult Function( String? message)  unexpected,}) {final _that = this;
switch (_that) {
case CategoryNotFound():
return notFound();case CategoryInvalidInput():
return invalidInput(_that.reason);case CategoryDuplicate():
return duplicate(_that.name);case CategoryCannotDeleteDefault():
return cannotDeleteDefault();case CategoryStillReferenced():
return stillReferenced(_that.transactionCount);case CategoryStorageError():
return storageError(_that.message);case CategoryUnexpected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notFound,TResult? Function( String reason)?  invalidInput,TResult? Function( String name)?  duplicate,TResult? Function()?  cannotDeleteDefault,TResult? Function( int transactionCount)?  stillReferenced,TResult? Function( String? message)?  storageError,TResult? Function( String? message)?  unexpected,}) {final _that = this;
switch (_that) {
case CategoryNotFound() when notFound != null:
return notFound();case CategoryInvalidInput() when invalidInput != null:
return invalidInput(_that.reason);case CategoryDuplicate() when duplicate != null:
return duplicate(_that.name);case CategoryCannotDeleteDefault() when cannotDeleteDefault != null:
return cannotDeleteDefault();case CategoryStillReferenced() when stillReferenced != null:
return stillReferenced(_that.transactionCount);case CategoryStorageError() when storageError != null:
return storageError(_that.message);case CategoryUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CategoryNotFound extends CategoryFailure {
  const CategoryNotFound(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryFailure.notFound()';
}


}




/// @nodoc


class CategoryInvalidInput extends CategoryFailure {
  const CategoryInvalidInput({required this.reason}): super._();
  

 final  String reason;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryInvalidInputCopyWith<CategoryInvalidInput> get copyWith => _$CategoryInvalidInputCopyWithImpl<CategoryInvalidInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryInvalidInput&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'CategoryFailure.invalidInput(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CategoryInvalidInputCopyWith<$Res> implements $CategoryFailureCopyWith<$Res> {
  factory $CategoryInvalidInputCopyWith(CategoryInvalidInput value, $Res Function(CategoryInvalidInput) _then) = _$CategoryInvalidInputCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$CategoryInvalidInputCopyWithImpl<$Res>
    implements $CategoryInvalidInputCopyWith<$Res> {
  _$CategoryInvalidInputCopyWithImpl(this._self, this._then);

  final CategoryInvalidInput _self;
  final $Res Function(CategoryInvalidInput) _then;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(CategoryInvalidInput(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CategoryDuplicate extends CategoryFailure {
  const CategoryDuplicate({required this.name}): super._();
  

 final  String name;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDuplicateCopyWith<CategoryDuplicate> get copyWith => _$CategoryDuplicateCopyWithImpl<CategoryDuplicate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDuplicate&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CategoryFailure.duplicate(name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryDuplicateCopyWith<$Res> implements $CategoryFailureCopyWith<$Res> {
  factory $CategoryDuplicateCopyWith(CategoryDuplicate value, $Res Function(CategoryDuplicate) _then) = _$CategoryDuplicateCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CategoryDuplicateCopyWithImpl<$Res>
    implements $CategoryDuplicateCopyWith<$Res> {
  _$CategoryDuplicateCopyWithImpl(this._self, this._then);

  final CategoryDuplicate _self;
  final $Res Function(CategoryDuplicate) _then;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(CategoryDuplicate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CategoryCannotDeleteDefault extends CategoryFailure {
  const CategoryCannotDeleteDefault(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryCannotDeleteDefault);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryFailure.cannotDeleteDefault()';
}


}




/// @nodoc


class CategoryStillReferenced extends CategoryFailure {
  const CategoryStillReferenced({required this.transactionCount}): super._();
  

 final  int transactionCount;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStillReferencedCopyWith<CategoryStillReferenced> get copyWith => _$CategoryStillReferencedCopyWithImpl<CategoryStillReferenced>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStillReferenced&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}


@override
int get hashCode => Object.hash(runtimeType,transactionCount);

@override
String toString() {
  return 'CategoryFailure.stillReferenced(transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class $CategoryStillReferencedCopyWith<$Res> implements $CategoryFailureCopyWith<$Res> {
  factory $CategoryStillReferencedCopyWith(CategoryStillReferenced value, $Res Function(CategoryStillReferenced) _then) = _$CategoryStillReferencedCopyWithImpl;
@useResult
$Res call({
 int transactionCount
});




}
/// @nodoc
class _$CategoryStillReferencedCopyWithImpl<$Res>
    implements $CategoryStillReferencedCopyWith<$Res> {
  _$CategoryStillReferencedCopyWithImpl(this._self, this._then);

  final CategoryStillReferenced _self;
  final $Res Function(CategoryStillReferenced) _then;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionCount = null,}) {
  return _then(CategoryStillReferenced(
transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CategoryStorageError extends CategoryFailure {
  const CategoryStorageError({this.message}): super._();
  

 final  String? message;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStorageErrorCopyWith<CategoryStorageError> get copyWith => _$CategoryStorageErrorCopyWithImpl<CategoryStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStorageError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CategoryFailure.storageError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CategoryStorageErrorCopyWith<$Res> implements $CategoryFailureCopyWith<$Res> {
  factory $CategoryStorageErrorCopyWith(CategoryStorageError value, $Res Function(CategoryStorageError) _then) = _$CategoryStorageErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CategoryStorageErrorCopyWithImpl<$Res>
    implements $CategoryStorageErrorCopyWith<$Res> {
  _$CategoryStorageErrorCopyWithImpl(this._self, this._then);

  final CategoryStorageError _self;
  final $Res Function(CategoryStorageError) _then;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CategoryStorageError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CategoryUnexpected extends CategoryFailure {
  const CategoryUnexpected({this.message}): super._();
  

 final  String? message;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryUnexpectedCopyWith<CategoryUnexpected> get copyWith => _$CategoryUnexpectedCopyWithImpl<CategoryUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CategoryFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $CategoryUnexpectedCopyWith<$Res> implements $CategoryFailureCopyWith<$Res> {
  factory $CategoryUnexpectedCopyWith(CategoryUnexpected value, $Res Function(CategoryUnexpected) _then) = _$CategoryUnexpectedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CategoryUnexpectedCopyWithImpl<$Res>
    implements $CategoryUnexpectedCopyWith<$Res> {
  _$CategoryUnexpectedCopyWithImpl(this._self, this._then);

  final CategoryUnexpected _self;
  final $Res Function(CategoryUnexpected) _then;

/// Create a copy of CategoryFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CategoryUnexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
