// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlySummary {

 int get year; int get month; Map<Currency, int> get incomeTotalMinorByCurrency; Map<Currency, int> get expenseTotalMinorByCurrency; List<DailySummary> get dailySummaries;
/// Create a copy of MonthlySummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlySummaryCopyWith<MonthlySummary> get copyWith => _$MonthlySummaryCopyWithImpl<MonthlySummary>(this as MonthlySummary, _$identity);

  /// Serializes this MonthlySummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlySummary&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other.incomeTotalMinorByCurrency, incomeTotalMinorByCurrency)&&const DeepCollectionEquality().equals(other.expenseTotalMinorByCurrency, expenseTotalMinorByCurrency)&&const DeepCollectionEquality().equals(other.dailySummaries, dailySummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,const DeepCollectionEquality().hash(incomeTotalMinorByCurrency),const DeepCollectionEquality().hash(expenseTotalMinorByCurrency),const DeepCollectionEquality().hash(dailySummaries));

@override
String toString() {
  return 'MonthlySummary(year: $year, month: $month, incomeTotalMinorByCurrency: $incomeTotalMinorByCurrency, expenseTotalMinorByCurrency: $expenseTotalMinorByCurrency, dailySummaries: $dailySummaries)';
}


}

/// @nodoc
abstract mixin class $MonthlySummaryCopyWith<$Res>  {
  factory $MonthlySummaryCopyWith(MonthlySummary value, $Res Function(MonthlySummary) _then) = _$MonthlySummaryCopyWithImpl;
@useResult
$Res call({
 int year, int month, Map<Currency, int> incomeTotalMinorByCurrency, Map<Currency, int> expenseTotalMinorByCurrency, List<DailySummary> dailySummaries
});




}
/// @nodoc
class _$MonthlySummaryCopyWithImpl<$Res>
    implements $MonthlySummaryCopyWith<$Res> {
  _$MonthlySummaryCopyWithImpl(this._self, this._then);

  final MonthlySummary _self;
  final $Res Function(MonthlySummary) _then;

/// Create a copy of MonthlySummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,Object? incomeTotalMinorByCurrency = null,Object? expenseTotalMinorByCurrency = null,Object? dailySummaries = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,incomeTotalMinorByCurrency: null == incomeTotalMinorByCurrency ? _self.incomeTotalMinorByCurrency : incomeTotalMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,expenseTotalMinorByCurrency: null == expenseTotalMinorByCurrency ? _self.expenseTotalMinorByCurrency : expenseTotalMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,dailySummaries: null == dailySummaries ? _self.dailySummaries : dailySummaries // ignore: cast_nullable_to_non_nullable
as List<DailySummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlySummary].
extension MonthlySummaryPatterns on MonthlySummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlySummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlySummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlySummary value)  $default,){
final _that = this;
switch (_that) {
case _MonthlySummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlySummary value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlySummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  int month,  Map<Currency, int> incomeTotalMinorByCurrency,  Map<Currency, int> expenseTotalMinorByCurrency,  List<DailySummary> dailySummaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlySummary() when $default != null:
return $default(_that.year,_that.month,_that.incomeTotalMinorByCurrency,_that.expenseTotalMinorByCurrency,_that.dailySummaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  int month,  Map<Currency, int> incomeTotalMinorByCurrency,  Map<Currency, int> expenseTotalMinorByCurrency,  List<DailySummary> dailySummaries)  $default,) {final _that = this;
switch (_that) {
case _MonthlySummary():
return $default(_that.year,_that.month,_that.incomeTotalMinorByCurrency,_that.expenseTotalMinorByCurrency,_that.dailySummaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  int month,  Map<Currency, int> incomeTotalMinorByCurrency,  Map<Currency, int> expenseTotalMinorByCurrency,  List<DailySummary> dailySummaries)?  $default,) {final _that = this;
switch (_that) {
case _MonthlySummary() when $default != null:
return $default(_that.year,_that.month,_that.incomeTotalMinorByCurrency,_that.expenseTotalMinorByCurrency,_that.dailySummaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlySummary extends MonthlySummary {
  const _MonthlySummary({required this.year, required this.month, required final  Map<Currency, int> incomeTotalMinorByCurrency, required final  Map<Currency, int> expenseTotalMinorByCurrency, required final  List<DailySummary> dailySummaries}): _incomeTotalMinorByCurrency = incomeTotalMinorByCurrency,_expenseTotalMinorByCurrency = expenseTotalMinorByCurrency,_dailySummaries = dailySummaries,super._();
  factory _MonthlySummary.fromJson(Map<String, dynamic> json) => _$MonthlySummaryFromJson(json);

@override final  int year;
@override final  int month;
 final  Map<Currency, int> _incomeTotalMinorByCurrency;
@override Map<Currency, int> get incomeTotalMinorByCurrency {
  if (_incomeTotalMinorByCurrency is EqualUnmodifiableMapView) return _incomeTotalMinorByCurrency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_incomeTotalMinorByCurrency);
}

 final  Map<Currency, int> _expenseTotalMinorByCurrency;
@override Map<Currency, int> get expenseTotalMinorByCurrency {
  if (_expenseTotalMinorByCurrency is EqualUnmodifiableMapView) return _expenseTotalMinorByCurrency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_expenseTotalMinorByCurrency);
}

 final  List<DailySummary> _dailySummaries;
@override List<DailySummary> get dailySummaries {
  if (_dailySummaries is EqualUnmodifiableListView) return _dailySummaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dailySummaries);
}


/// Create a copy of MonthlySummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlySummaryCopyWith<_MonthlySummary> get copyWith => __$MonthlySummaryCopyWithImpl<_MonthlySummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlySummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlySummary&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other._incomeTotalMinorByCurrency, _incomeTotalMinorByCurrency)&&const DeepCollectionEquality().equals(other._expenseTotalMinorByCurrency, _expenseTotalMinorByCurrency)&&const DeepCollectionEquality().equals(other._dailySummaries, _dailySummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,const DeepCollectionEquality().hash(_incomeTotalMinorByCurrency),const DeepCollectionEquality().hash(_expenseTotalMinorByCurrency),const DeepCollectionEquality().hash(_dailySummaries));

@override
String toString() {
  return 'MonthlySummary(year: $year, month: $month, incomeTotalMinorByCurrency: $incomeTotalMinorByCurrency, expenseTotalMinorByCurrency: $expenseTotalMinorByCurrency, dailySummaries: $dailySummaries)';
}


}

/// @nodoc
abstract mixin class _$MonthlySummaryCopyWith<$Res> implements $MonthlySummaryCopyWith<$Res> {
  factory _$MonthlySummaryCopyWith(_MonthlySummary value, $Res Function(_MonthlySummary) _then) = __$MonthlySummaryCopyWithImpl;
@override @useResult
$Res call({
 int year, int month, Map<Currency, int> incomeTotalMinorByCurrency, Map<Currency, int> expenseTotalMinorByCurrency, List<DailySummary> dailySummaries
});




}
/// @nodoc
class __$MonthlySummaryCopyWithImpl<$Res>
    implements _$MonthlySummaryCopyWith<$Res> {
  __$MonthlySummaryCopyWithImpl(this._self, this._then);

  final _MonthlySummary _self;
  final $Res Function(_MonthlySummary) _then;

/// Create a copy of MonthlySummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,Object? incomeTotalMinorByCurrency = null,Object? expenseTotalMinorByCurrency = null,Object? dailySummaries = null,}) {
  return _then(_MonthlySummary(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,incomeTotalMinorByCurrency: null == incomeTotalMinorByCurrency ? _self._incomeTotalMinorByCurrency : incomeTotalMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,expenseTotalMinorByCurrency: null == expenseTotalMinorByCurrency ? _self._expenseTotalMinorByCurrency : expenseTotalMinorByCurrency // ignore: cast_nullable_to_non_nullable
as Map<Currency, int>,dailySummaries: null == dailySummaries ? _self._dailySummaries : dailySummaries // ignore: cast_nullable_to_non_nullable
as List<DailySummary>,
  ));
}


}

// dart format on
