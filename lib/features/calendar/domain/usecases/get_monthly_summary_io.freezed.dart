// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_monthly_summary_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMonthlySummaryParams {

 int get year; int get month;
/// Create a copy of GetMonthlySummaryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlySummaryParamsCopyWith<GetMonthlySummaryParams> get copyWith => _$GetMonthlySummaryParamsCopyWithImpl<GetMonthlySummaryParams>(this as GetMonthlySummaryParams, _$identity);

  /// Serializes this GetMonthlySummaryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlySummaryParams&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'GetMonthlySummaryParams(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $GetMonthlySummaryParamsCopyWith<$Res>  {
  factory $GetMonthlySummaryParamsCopyWith(GetMonthlySummaryParams value, $Res Function(GetMonthlySummaryParams) _then) = _$GetMonthlySummaryParamsCopyWithImpl;
@useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class _$GetMonthlySummaryParamsCopyWithImpl<$Res>
    implements $GetMonthlySummaryParamsCopyWith<$Res> {
  _$GetMonthlySummaryParamsCopyWithImpl(this._self, this._then);

  final GetMonthlySummaryParams _self;
  final $Res Function(GetMonthlySummaryParams) _then;

/// Create a copy of GetMonthlySummaryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMonthlySummaryParams].
extension GetMonthlySummaryParamsPatterns on GetMonthlySummaryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMonthlySummaryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMonthlySummaryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMonthlySummaryParams value)  $default,){
final _that = this;
switch (_that) {
case _GetMonthlySummaryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMonthlySummaryParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetMonthlySummaryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  int month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMonthlySummaryParams() when $default != null:
return $default(_that.year,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  int month)  $default,) {final _that = this;
switch (_that) {
case _GetMonthlySummaryParams():
return $default(_that.year,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  int month)?  $default,) {final _that = this;
switch (_that) {
case _GetMonthlySummaryParams() when $default != null:
return $default(_that.year,_that.month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMonthlySummaryParams implements GetMonthlySummaryParams {
  const _GetMonthlySummaryParams({required this.year, required this.month});
  factory _GetMonthlySummaryParams.fromJson(Map<String, dynamic> json) => _$GetMonthlySummaryParamsFromJson(json);

@override final  int year;
@override final  int month;

/// Create a copy of GetMonthlySummaryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMonthlySummaryParamsCopyWith<_GetMonthlySummaryParams> get copyWith => __$GetMonthlySummaryParamsCopyWithImpl<_GetMonthlySummaryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMonthlySummaryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMonthlySummaryParams&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'GetMonthlySummaryParams(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class _$GetMonthlySummaryParamsCopyWith<$Res> implements $GetMonthlySummaryParamsCopyWith<$Res> {
  factory _$GetMonthlySummaryParamsCopyWith(_GetMonthlySummaryParams value, $Res Function(_GetMonthlySummaryParams) _then) = __$GetMonthlySummaryParamsCopyWithImpl;
@override @useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class __$GetMonthlySummaryParamsCopyWithImpl<$Res>
    implements _$GetMonthlySummaryParamsCopyWith<$Res> {
  __$GetMonthlySummaryParamsCopyWithImpl(this._self, this._then);

  final _GetMonthlySummaryParams _self;
  final $Res Function(_GetMonthlySummaryParams) _then;

/// Create a copy of GetMonthlySummaryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,}) {
  return _then(_GetMonthlySummaryParams(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$GetMonthlySummaryResult {

 MonthlySummary get summary;
/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlySummaryResultCopyWith<GetMonthlySummaryResult> get copyWith => _$GetMonthlySummaryResultCopyWithImpl<GetMonthlySummaryResult>(this as GetMonthlySummaryResult, _$identity);

  /// Serializes this GetMonthlySummaryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlySummaryResult&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'GetMonthlySummaryResult(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $GetMonthlySummaryResultCopyWith<$Res>  {
  factory $GetMonthlySummaryResultCopyWith(GetMonthlySummaryResult value, $Res Function(GetMonthlySummaryResult) _then) = _$GetMonthlySummaryResultCopyWithImpl;
@useResult
$Res call({
 MonthlySummary summary
});


$MonthlySummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$GetMonthlySummaryResultCopyWithImpl<$Res>
    implements $GetMonthlySummaryResultCopyWith<$Res> {
  _$GetMonthlySummaryResultCopyWithImpl(this._self, this._then);

  final GetMonthlySummaryResult _self;
  final $Res Function(GetMonthlySummaryResult) _then;

/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MonthlySummary,
  ));
}
/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlySummaryCopyWith<$Res> get summary {
  
  return $MonthlySummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetMonthlySummaryResult].
extension GetMonthlySummaryResultPatterns on GetMonthlySummaryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMonthlySummaryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMonthlySummaryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMonthlySummaryResult value)  $default,){
final _that = this;
switch (_that) {
case _GetMonthlySummaryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMonthlySummaryResult value)?  $default,){
final _that = this;
switch (_that) {
case _GetMonthlySummaryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MonthlySummary summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMonthlySummaryResult() when $default != null:
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MonthlySummary summary)  $default,) {final _that = this;
switch (_that) {
case _GetMonthlySummaryResult():
return $default(_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MonthlySummary summary)?  $default,) {final _that = this;
switch (_that) {
case _GetMonthlySummaryResult() when $default != null:
return $default(_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMonthlySummaryResult implements GetMonthlySummaryResult {
  const _GetMonthlySummaryResult({required this.summary});
  factory _GetMonthlySummaryResult.fromJson(Map<String, dynamic> json) => _$GetMonthlySummaryResultFromJson(json);

@override final  MonthlySummary summary;

/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMonthlySummaryResultCopyWith<_GetMonthlySummaryResult> get copyWith => __$GetMonthlySummaryResultCopyWithImpl<_GetMonthlySummaryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMonthlySummaryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMonthlySummaryResult&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'GetMonthlySummaryResult(summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$GetMonthlySummaryResultCopyWith<$Res> implements $GetMonthlySummaryResultCopyWith<$Res> {
  factory _$GetMonthlySummaryResultCopyWith(_GetMonthlySummaryResult value, $Res Function(_GetMonthlySummaryResult) _then) = __$GetMonthlySummaryResultCopyWithImpl;
@override @useResult
$Res call({
 MonthlySummary summary
});


@override $MonthlySummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$GetMonthlySummaryResultCopyWithImpl<$Res>
    implements _$GetMonthlySummaryResultCopyWith<$Res> {
  __$GetMonthlySummaryResultCopyWithImpl(this._self, this._then);

  final _GetMonthlySummaryResult _self;
  final $Res Function(_GetMonthlySummaryResult) _then;

/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(_GetMonthlySummaryResult(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MonthlySummary,
  ));
}

/// Create a copy of GetMonthlySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlySummaryCopyWith<$Res> get summary {
  
  return $MonthlySummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
