// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_record_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BitcoinRecordSnapshot {

 int get satAmount; int get jpyAtRecordTime; int get usdCentsAtRecordTime; int get btcJpyRate; int get btcUsdCentRate; DateTime get recordedAt;
/// Create a copy of BitcoinRecordSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BitcoinRecordSnapshotCopyWith<BitcoinRecordSnapshot> get copyWith => _$BitcoinRecordSnapshotCopyWithImpl<BitcoinRecordSnapshot>(this as BitcoinRecordSnapshot, _$identity);

  /// Serializes this BitcoinRecordSnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BitcoinRecordSnapshot&&(identical(other.satAmount, satAmount) || other.satAmount == satAmount)&&(identical(other.jpyAtRecordTime, jpyAtRecordTime) || other.jpyAtRecordTime == jpyAtRecordTime)&&(identical(other.usdCentsAtRecordTime, usdCentsAtRecordTime) || other.usdCentsAtRecordTime == usdCentsAtRecordTime)&&(identical(other.btcJpyRate, btcJpyRate) || other.btcJpyRate == btcJpyRate)&&(identical(other.btcUsdCentRate, btcUsdCentRate) || other.btcUsdCentRate == btcUsdCentRate)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,satAmount,jpyAtRecordTime,usdCentsAtRecordTime,btcJpyRate,btcUsdCentRate,recordedAt);

@override
String toString() {
  return 'BitcoinRecordSnapshot(satAmount: $satAmount, jpyAtRecordTime: $jpyAtRecordTime, usdCentsAtRecordTime: $usdCentsAtRecordTime, btcJpyRate: $btcJpyRate, btcUsdCentRate: $btcUsdCentRate, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class $BitcoinRecordSnapshotCopyWith<$Res>  {
  factory $BitcoinRecordSnapshotCopyWith(BitcoinRecordSnapshot value, $Res Function(BitcoinRecordSnapshot) _then) = _$BitcoinRecordSnapshotCopyWithImpl;
@useResult
$Res call({
 int satAmount, int jpyAtRecordTime, int usdCentsAtRecordTime, int btcJpyRate, int btcUsdCentRate, DateTime recordedAt
});




}
/// @nodoc
class _$BitcoinRecordSnapshotCopyWithImpl<$Res>
    implements $BitcoinRecordSnapshotCopyWith<$Res> {
  _$BitcoinRecordSnapshotCopyWithImpl(this._self, this._then);

  final BitcoinRecordSnapshot _self;
  final $Res Function(BitcoinRecordSnapshot) _then;

/// Create a copy of BitcoinRecordSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? satAmount = null,Object? jpyAtRecordTime = null,Object? usdCentsAtRecordTime = null,Object? btcJpyRate = null,Object? btcUsdCentRate = null,Object? recordedAt = null,}) {
  return _then(_self.copyWith(
satAmount: null == satAmount ? _self.satAmount : satAmount // ignore: cast_nullable_to_non_nullable
as int,jpyAtRecordTime: null == jpyAtRecordTime ? _self.jpyAtRecordTime : jpyAtRecordTime // ignore: cast_nullable_to_non_nullable
as int,usdCentsAtRecordTime: null == usdCentsAtRecordTime ? _self.usdCentsAtRecordTime : usdCentsAtRecordTime // ignore: cast_nullable_to_non_nullable
as int,btcJpyRate: null == btcJpyRate ? _self.btcJpyRate : btcJpyRate // ignore: cast_nullable_to_non_nullable
as int,btcUsdCentRate: null == btcUsdCentRate ? _self.btcUsdCentRate : btcUsdCentRate // ignore: cast_nullable_to_non_nullable
as int,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BitcoinRecordSnapshot].
extension BitcoinRecordSnapshotPatterns on BitcoinRecordSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BitcoinRecordSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BitcoinRecordSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BitcoinRecordSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int satAmount,  int jpyAtRecordTime,  int usdCentsAtRecordTime,  int btcJpyRate,  int btcUsdCentRate,  DateTime recordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot() when $default != null:
return $default(_that.satAmount,_that.jpyAtRecordTime,_that.usdCentsAtRecordTime,_that.btcJpyRate,_that.btcUsdCentRate,_that.recordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int satAmount,  int jpyAtRecordTime,  int usdCentsAtRecordTime,  int btcJpyRate,  int btcUsdCentRate,  DateTime recordedAt)  $default,) {final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot():
return $default(_that.satAmount,_that.jpyAtRecordTime,_that.usdCentsAtRecordTime,_that.btcJpyRate,_that.btcUsdCentRate,_that.recordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int satAmount,  int jpyAtRecordTime,  int usdCentsAtRecordTime,  int btcJpyRate,  int btcUsdCentRate,  DateTime recordedAt)?  $default,) {final _that = this;
switch (_that) {
case _BitcoinRecordSnapshot() when $default != null:
return $default(_that.satAmount,_that.jpyAtRecordTime,_that.usdCentsAtRecordTime,_that.btcJpyRate,_that.btcUsdCentRate,_that.recordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BitcoinRecordSnapshot extends BitcoinRecordSnapshot {
  const _BitcoinRecordSnapshot({required this.satAmount, required this.jpyAtRecordTime, required this.usdCentsAtRecordTime, required this.btcJpyRate, required this.btcUsdCentRate, required this.recordedAt}): super._();
  factory _BitcoinRecordSnapshot.fromJson(Map<String, dynamic> json) => _$BitcoinRecordSnapshotFromJson(json);

@override final  int satAmount;
@override final  int jpyAtRecordTime;
@override final  int usdCentsAtRecordTime;
@override final  int btcJpyRate;
@override final  int btcUsdCentRate;
@override final  DateTime recordedAt;

/// Create a copy of BitcoinRecordSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BitcoinRecordSnapshotCopyWith<_BitcoinRecordSnapshot> get copyWith => __$BitcoinRecordSnapshotCopyWithImpl<_BitcoinRecordSnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BitcoinRecordSnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BitcoinRecordSnapshot&&(identical(other.satAmount, satAmount) || other.satAmount == satAmount)&&(identical(other.jpyAtRecordTime, jpyAtRecordTime) || other.jpyAtRecordTime == jpyAtRecordTime)&&(identical(other.usdCentsAtRecordTime, usdCentsAtRecordTime) || other.usdCentsAtRecordTime == usdCentsAtRecordTime)&&(identical(other.btcJpyRate, btcJpyRate) || other.btcJpyRate == btcJpyRate)&&(identical(other.btcUsdCentRate, btcUsdCentRate) || other.btcUsdCentRate == btcUsdCentRate)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,satAmount,jpyAtRecordTime,usdCentsAtRecordTime,btcJpyRate,btcUsdCentRate,recordedAt);

@override
String toString() {
  return 'BitcoinRecordSnapshot(satAmount: $satAmount, jpyAtRecordTime: $jpyAtRecordTime, usdCentsAtRecordTime: $usdCentsAtRecordTime, btcJpyRate: $btcJpyRate, btcUsdCentRate: $btcUsdCentRate, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class _$BitcoinRecordSnapshotCopyWith<$Res> implements $BitcoinRecordSnapshotCopyWith<$Res> {
  factory _$BitcoinRecordSnapshotCopyWith(_BitcoinRecordSnapshot value, $Res Function(_BitcoinRecordSnapshot) _then) = __$BitcoinRecordSnapshotCopyWithImpl;
@override @useResult
$Res call({
 int satAmount, int jpyAtRecordTime, int usdCentsAtRecordTime, int btcJpyRate, int btcUsdCentRate, DateTime recordedAt
});




}
/// @nodoc
class __$BitcoinRecordSnapshotCopyWithImpl<$Res>
    implements _$BitcoinRecordSnapshotCopyWith<$Res> {
  __$BitcoinRecordSnapshotCopyWithImpl(this._self, this._then);

  final _BitcoinRecordSnapshot _self;
  final $Res Function(_BitcoinRecordSnapshot) _then;

/// Create a copy of BitcoinRecordSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? satAmount = null,Object? jpyAtRecordTime = null,Object? usdCentsAtRecordTime = null,Object? btcJpyRate = null,Object? btcUsdCentRate = null,Object? recordedAt = null,}) {
  return _then(_BitcoinRecordSnapshot(
satAmount: null == satAmount ? _self.satAmount : satAmount // ignore: cast_nullable_to_non_nullable
as int,jpyAtRecordTime: null == jpyAtRecordTime ? _self.jpyAtRecordTime : jpyAtRecordTime // ignore: cast_nullable_to_non_nullable
as int,usdCentsAtRecordTime: null == usdCentsAtRecordTime ? _self.usdCentsAtRecordTime : usdCentsAtRecordTime // ignore: cast_nullable_to_non_nullable
as int,btcJpyRate: null == btcJpyRate ? _self.btcJpyRate : btcJpyRate // ignore: cast_nullable_to_non_nullable
as int,btcUsdCentRate: null == btcUsdCentRate ? _self.btcUsdCentRate : btcUsdCentRate // ignore: cast_nullable_to_non_nullable
as int,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
