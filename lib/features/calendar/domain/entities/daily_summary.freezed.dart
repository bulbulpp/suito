// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailySummary {

 DateTime get date; Map<Currency, int> get incomeMinorByCurrency; Map<Currency, int> get expenseMinorByCurrency; int get transactionCount;
/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailySummaryCopyWith<DailySummary> get copyWith => _$DailySummaryCopyWithImpl<DailySummary>(this as DailySummary, _$identity);

  /// Serializes this DailySummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailySummary&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.incomeMinorByCurrency, incomeMinorByCurrency)&&const DeepCollectionEquality().equals(other.expenseMinorByCurrency, expenseMinorByCurrency)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(incomeMinorByCurrency),const DeepCollectionEquality().hash(expenseMinorByCurrency),transactionCount);

@override
String toString() {
  return 'DailySummary(date: $date, incomeMinorByCurrency: $incomeMinorByCurrency, expenseMinorByCurrency: $expenseMinorByCurrency, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class $DailySummaryCopyWith<$Res>  {
  factory $DailySummaryCopyWith(DailySummary value, $Res Function(DailySummary) _then) = _$DailySummaryCopyWithImpl;
@useResult
$Res call({
 DateTime date, Map<Currency, int> incomeMinorByCurrency, Map<Currency, int> expenseMinorByCurrency, int transactionCount
});




}
/// @nodoc
class _$DailySummaryCopyWithImpl<$Res>
    implements $DailySummaryCopyWith<$Res> {
  _$DailySummaryCopyWithImpl(this._self, this._then);

  final DailySummary _self;
  final $Res Function(DailySummary) _then;

/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? incomeMinorByCurrency = null,Object? expenseMinorByCurrency = null,Object? transactionCount = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,incomeMinorByCurrency: null == incomeMinorByCurrency ? _self.incomeMinorByCurrency : incomeMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,expenseMinorByCurrency: null == expenseMinorByCurrency ? _self.expenseMinorByCurrency : expenseMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailySummary].
extension DailySummaryPatterns on DailySummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailySummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailySummary value)  $default,){
final _that = this;
switch (_that) {
case _DailySummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailySummary value)?  $default,){
final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  Map<Currency, int> incomeMinorByCurrency,  Map<Currency, int> expenseMinorByCurrency,  int transactionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
return $default(_that.date,_that.incomeMinorByCurrency,_that.expenseMinorByCurrency,_that.transactionCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  Map<Currency, int> incomeMinorByCurrency,  Map<Currency, int> expenseMinorByCurrency,  int transactionCount)  $default,) {final _that = this;
switch (_that) {
case _DailySummary():
return $default(_that.date,_that.incomeMinorByCurrency,_that.expenseMinorByCurrency,_that.transactionCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  Map<Currency, int> incomeMinorByCurrency,  Map<Currency, int> expenseMinorByCurrency,  int transactionCount)?  $default,) {final _that = this;
switch (_that) {
case _DailySummary() when $default != null:
return $default(_that.date,_that.incomeMinorByCurrency,_that.expenseMinorByCurrency,_that.transactionCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailySummary extends DailySummary {
  const _DailySummary({required this.date, required final  Map<Currency, int> incomeMinorByCurrency, required final  Map<Currency, int> expenseMinorByCurrency, required this.transactionCount}): _incomeMinorByCurrency = incomeMinorByCurrency,_expenseMinorByCurrency = expenseMinorByCurrency,super._();
  factory _DailySummary.fromJson(Map<String, dynamic> json) => _$DailySummaryFromJson(json);

@override final  DateTime date;
 final  Map<Currency, int> _incomeMinorByCurrency;
@override Map<Currency, int> get incomeMinorByCurrency {
  if (_incomeMinorByCurrency is EqualUnmodifiableMapView) return _incomeMinorByCurrency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_incomeMinorByCurrency);
}

 final  Map<Currency, int> _expenseMinorByCurrency;
@override Map<Currency, int> get expenseMinorByCurrency {
  if (_expenseMinorByCurrency is EqualUnmodifiableMapView) return _expenseMinorByCurrency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_expenseMinorByCurrency);
}

@override final  int transactionCount;

/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailySummaryCopyWith<_DailySummary> get copyWith => __$DailySummaryCopyWithImpl<_DailySummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailySummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailySummary&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._incomeMinorByCurrency, _incomeMinorByCurrency)&&const DeepCollectionEquality().equals(other._expenseMinorByCurrency, _expenseMinorByCurrency)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_incomeMinorByCurrency),const DeepCollectionEquality().hash(_expenseMinorByCurrency),transactionCount);

@override
String toString() {
  return 'DailySummary(date: $date, incomeMinorByCurrency: $incomeMinorByCurrency, expenseMinorByCurrency: $expenseMinorByCurrency, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class _$DailySummaryCopyWith<$Res> implements $DailySummaryCopyWith<$Res> {
  factory _$DailySummaryCopyWith(_DailySummary value, $Res Function(_DailySummary) _then) = __$DailySummaryCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, Map<Currency, int> incomeMinorByCurrency, Map<Currency, int> expenseMinorByCurrency, int transactionCount
});




}
/// @nodoc
class __$DailySummaryCopyWithImpl<$Res>
    implements _$DailySummaryCopyWith<$Res> {
  __$DailySummaryCopyWithImpl(this._self, this._then);

  final _DailySummary _self;
  final $Res Function(_DailySummary) _then;

/// Create a copy of DailySummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? incomeMinorByCurrency = null,Object? expenseMinorByCurrency = null,Object? transactionCount = null,}) {
  return _then(_DailySummary(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,incomeMinorByCurrency: null == incomeMinorByCurrency ? _self._incomeMinorByCurrency : incomeMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,expenseMinorByCurrency: null == expenseMinorByCurrency ? _self._expenseMinorByCurrency : expenseMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
