// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_summary_io.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetDailySummaryParams {

 DateTime get date;
/// Create a copy of GetDailySummaryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailySummaryParamsCopyWith<GetDailySummaryParams> get copyWith => _$GetDailySummaryParamsCopyWithImpl<GetDailySummaryParams>(this as GetDailySummaryParams, _$identity);

  /// Serializes this GetDailySummaryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailySummaryParams&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'GetDailySummaryParams(date: $date)';
}


}

/// @nodoc
abstract mixin class $GetDailySummaryParamsCopyWith<$Res>  {
  factory $GetDailySummaryParamsCopyWith(GetDailySummaryParams value, $Res Function(GetDailySummaryParams) _then) = _$GetDailySummaryParamsCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$GetDailySummaryParamsCopyWithImpl<$Res>
    implements $GetDailySummaryParamsCopyWith<$Res> {
  _$GetDailySummaryParamsCopyWithImpl(this._self, this._then);

  final GetDailySummaryParams _self;
  final $Res Function(GetDailySummaryParams) _then;

/// Create a copy of GetDailySummaryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDailySummaryParams].
extension GetDailySummaryParamsPatterns on GetDailySummaryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDailySummaryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDailySummaryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDailySummaryParams value)  $default,){
final _that = this;
switch (_that) {
case _GetDailySummaryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDailySummaryParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetDailySummaryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDailySummaryParams() when $default != null:
return $default(_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date)  $default,) {final _that = this;
switch (_that) {
case _GetDailySummaryParams():
return $default(_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _GetDailySummaryParams() when $default != null:
return $default(_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDailySummaryParams implements GetDailySummaryParams {
  const _GetDailySummaryParams({required this.date});
  factory _GetDailySummaryParams.fromJson(Map<String, dynamic> json) => _$GetDailySummaryParamsFromJson(json);

@override final  DateTime date;

/// Create a copy of GetDailySummaryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDailySummaryParamsCopyWith<_GetDailySummaryParams> get copyWith => __$GetDailySummaryParamsCopyWithImpl<_GetDailySummaryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDailySummaryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDailySummaryParams&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'GetDailySummaryParams(date: $date)';
}


}

/// @nodoc
abstract mixin class _$GetDailySummaryParamsCopyWith<$Res> implements $GetDailySummaryParamsCopyWith<$Res> {
  factory _$GetDailySummaryParamsCopyWith(_GetDailySummaryParams value, $Res Function(_GetDailySummaryParams) _then) = __$GetDailySummaryParamsCopyWithImpl;
@override @useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$GetDailySummaryParamsCopyWithImpl<$Res>
    implements _$GetDailySummaryParamsCopyWith<$Res> {
  __$GetDailySummaryParamsCopyWithImpl(this._self, this._then);

  final _GetDailySummaryParams _self;
  final $Res Function(_GetDailySummaryParams) _then;

/// Create a copy of GetDailySummaryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_GetDailySummaryParams(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$GetDailySummaryResult {

 DailySummary get summary;
/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailySummaryResultCopyWith<GetDailySummaryResult> get copyWith => _$GetDailySummaryResultCopyWithImpl<GetDailySummaryResult>(this as GetDailySummaryResult, _$identity);

  /// Serializes this GetDailySummaryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailySummaryResult&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'GetDailySummaryResult(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $GetDailySummaryResultCopyWith<$Res>  {
  factory $GetDailySummaryResultCopyWith(GetDailySummaryResult value, $Res Function(GetDailySummaryResult) _then) = _$GetDailySummaryResultCopyWithImpl;
@useResult
$Res call({
 DailySummary summary
});


$DailySummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$GetDailySummaryResultCopyWithImpl<$Res>
    implements $GetDailySummaryResultCopyWith<$Res> {
  _$GetDailySummaryResultCopyWithImpl(this._self, this._then);

  final GetDailySummaryResult _self;
  final $Res Function(GetDailySummaryResult) _then;

/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DailySummary,
  ));
}
/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailySummaryCopyWith<$Res> get summary {
  
  return $DailySummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetDailySummaryResult].
extension GetDailySummaryResultPatterns on GetDailySummaryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDailySummaryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDailySummaryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDailySummaryResult value)  $default,){
final _that = this;
switch (_that) {
case _GetDailySummaryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDailySummaryResult value)?  $default,){
final _that = this;
switch (_that) {
case _GetDailySummaryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DailySummary summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDailySummaryResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DailySummary summary)  $default,) {final _that = this;
switch (_that) {
case _GetDailySummaryResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DailySummary summary)?  $default,) {final _that = this;
switch (_that) {
case _GetDailySummaryResult() when $default != null:
return $default(_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDailySummaryResult implements GetDailySummaryResult {
  const _GetDailySummaryResult({required this.summary});
  factory _GetDailySummaryResult.fromJson(Map<String, dynamic> json) => _$GetDailySummaryResultFromJson(json);

@override final  DailySummary summary;

/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDailySummaryResultCopyWith<_GetDailySummaryResult> get copyWith => __$GetDailySummaryResultCopyWithImpl<_GetDailySummaryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDailySummaryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDailySummaryResult&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'GetDailySummaryResult(summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$GetDailySummaryResultCopyWith<$Res> implements $GetDailySummaryResultCopyWith<$Res> {
  factory _$GetDailySummaryResultCopyWith(_GetDailySummaryResult value, $Res Function(_GetDailySummaryResult) _then) = __$GetDailySummaryResultCopyWithImpl;
@override @useResult
$Res call({
 DailySummary summary
});


@override $DailySummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$GetDailySummaryResultCopyWithImpl<$Res>
    implements _$GetDailySummaryResultCopyWith<$Res> {
  __$GetDailySummaryResultCopyWithImpl(this._self, this._then);

  final _GetDailySummaryResult _self;
  final $Res Function(_GetDailySummaryResult) _then;

/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(_GetDailySummaryResult(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DailySummary,
  ));
}

/// Create a copy of GetDailySummaryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailySummaryCopyWith<$Res> get summary {
  
  return $DailySummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
