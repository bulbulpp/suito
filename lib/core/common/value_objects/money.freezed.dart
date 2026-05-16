// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Money _$MoneyFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'jpy':
          return JpyMoney.fromJson(
            json
          );
                case 'usd':
          return UsdMoney.fromJson(
            json
          );
                case 'sat':
          return SatMoney.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Money',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Money {



  /// Serializes this Money to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Money);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Money()';
}


}

/// @nodoc
class $MoneyCopyWith<$Res>  {
$MoneyCopyWith(Money _, $Res Function(Money) __);
}


/// Adds pattern-matching-related methods to [Money].
extension MoneyPatterns on Money {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( JpyMoney value)?  jpy,TResult Function( UsdMoney value)?  usd,TResult Function( SatMoney value)?  sat,required TResult orElse(),}){
final _that = this;
switch (_that) {
case JpyMoney() when jpy != null:
return jpy(_that);case UsdMoney() when usd != null:
return usd(_that);case SatMoney() when sat != null:
return sat(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( JpyMoney value)  jpy,required TResult Function( UsdMoney value)  usd,required TResult Function( SatMoney value)  sat,}){
final _that = this;
switch (_that) {
case JpyMoney():
return jpy(_that);case UsdMoney():
return usd(_that);case SatMoney():
return sat(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( JpyMoney value)?  jpy,TResult? Function( UsdMoney value)?  usd,TResult? Function( SatMoney value)?  sat,}){
final _that = this;
switch (_that) {
case JpyMoney() when jpy != null:
return jpy(_that);case UsdMoney() when usd != null:
return usd(_that);case SatMoney() when sat != null:
return sat(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int amount)?  jpy,TResult Function( int cents)?  usd,TResult Function( int amount)?  sat,required TResult orElse(),}) {final _that = this;
switch (_that) {
case JpyMoney() when jpy != null:
return jpy(_that.amount);case UsdMoney() when usd != null:
return usd(_that.cents);case SatMoney() when sat != null:
return sat(_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int amount)  jpy,required TResult Function( int cents)  usd,required TResult Function( int amount)  sat,}) {final _that = this;
switch (_that) {
case JpyMoney():
return jpy(_that.amount);case UsdMoney():
return usd(_that.cents);case SatMoney():
return sat(_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int amount)?  jpy,TResult? Function( int cents)?  usd,TResult? Function( int amount)?  sat,}) {final _that = this;
switch (_that) {
case JpyMoney() when jpy != null:
return jpy(_that.amount);case UsdMoney() when usd != null:
return usd(_that.cents);case SatMoney() when sat != null:
return sat(_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class JpyMoney extends Money {
  const JpyMoney({required this.amount, final  String? $type}): $type = $type ?? 'jpy',super._();
  factory JpyMoney.fromJson(Map<String, dynamic> json) => _$JpyMoneyFromJson(json);

 final  int amount;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JpyMoneyCopyWith<JpyMoney> get copyWith => _$JpyMoneyCopyWithImpl<JpyMoney>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JpyMoneyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JpyMoney&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'Money.jpy(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $JpyMoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory $JpyMoneyCopyWith(JpyMoney value, $Res Function(JpyMoney) _then) = _$JpyMoneyCopyWithImpl;
@useResult
$Res call({
 int amount
});




}
/// @nodoc
class _$JpyMoneyCopyWithImpl<$Res>
    implements $JpyMoneyCopyWith<$Res> {
  _$JpyMoneyCopyWithImpl(this._self, this._then);

  final JpyMoney _self;
  final $Res Function(JpyMoney) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(JpyMoney(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UsdMoney extends Money {
  const UsdMoney({required this.cents, final  String? $type}): $type = $type ?? 'usd',super._();
  factory UsdMoney.fromJson(Map<String, dynamic> json) => _$UsdMoneyFromJson(json);

 final  int cents;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsdMoneyCopyWith<UsdMoney> get copyWith => _$UsdMoneyCopyWithImpl<UsdMoney>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsdMoneyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsdMoney&&(identical(other.cents, cents) || other.cents == cents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cents);

@override
String toString() {
  return 'Money.usd(cents: $cents)';
}


}

/// @nodoc
abstract mixin class $UsdMoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory $UsdMoneyCopyWith(UsdMoney value, $Res Function(UsdMoney) _then) = _$UsdMoneyCopyWithImpl;
@useResult
$Res call({
 int cents
});




}
/// @nodoc
class _$UsdMoneyCopyWithImpl<$Res>
    implements $UsdMoneyCopyWith<$Res> {
  _$UsdMoneyCopyWithImpl(this._self, this._then);

  final UsdMoney _self;
  final $Res Function(UsdMoney) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cents = null,}) {
  return _then(UsdMoney(
cents: null == cents ? _self.cents : cents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SatMoney extends Money {
  const SatMoney({required this.amount, final  String? $type}): $type = $type ?? 'sat',super._();
  factory SatMoney.fromJson(Map<String, dynamic> json) => _$SatMoneyFromJson(json);

 final  int amount;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SatMoneyCopyWith<SatMoney> get copyWith => _$SatMoneyCopyWithImpl<SatMoney>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SatMoneyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SatMoney&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'Money.sat(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SatMoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory $SatMoneyCopyWith(SatMoney value, $Res Function(SatMoney) _then) = _$SatMoneyCopyWithImpl;
@useResult
$Res call({
 int amount
});




}
/// @nodoc
class _$SatMoneyCopyWithImpl<$Res>
    implements $SatMoneyCopyWith<$Res> {
  _$SatMoneyCopyWithImpl(this._self, this._then);

  final SatMoney _self;
  final $Res Function(SatMoney) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(SatMoney(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
