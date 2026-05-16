// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SyncStatus()';
}


}

/// @nodoc
class $SyncStatusCopyWith<$Res>  {
$SyncStatusCopyWith(SyncStatus _, $Res Function(SyncStatus) __);
}


/// Adds pattern-matching-related methods to [SyncStatus].
extension SyncStatusPatterns on SyncStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SyncIdle value)?  idle,TResult Function( SyncSyncing value)?  syncing,TResult Function( SyncSuccess value)?  success,TResult Function( SyncError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SyncIdle() when idle != null:
return idle(_that);case SyncSyncing() when syncing != null:
return syncing(_that);case SyncSuccess() when success != null:
return success(_that);case SyncError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SyncIdle value)  idle,required TResult Function( SyncSyncing value)  syncing,required TResult Function( SyncSuccess value)  success,required TResult Function( SyncError value)  error,}){
final _that = this;
switch (_that) {
case SyncIdle():
return idle(_that);case SyncSyncing():
return syncing(_that);case SyncSuccess():
return success(_that);case SyncError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SyncIdle value)?  idle,TResult? Function( SyncSyncing value)?  syncing,TResult? Function( SyncSuccess value)?  success,TResult? Function( SyncError value)?  error,}){
final _that = this;
switch (_that) {
case SyncIdle() when idle != null:
return idle(_that);case SyncSyncing() when syncing != null:
return syncing(_that);case SyncSuccess() when success != null:
return success(_that);case SyncError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function( int progressedEventCount)?  syncing,TResult Function( DateTime at,  int pushedCount,  int fetchedCount)?  success,TResult Function( String message,  DateTime? at)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SyncIdle() when idle != null:
return idle();case SyncSyncing() when syncing != null:
return syncing(_that.progressedEventCount);case SyncSuccess() when success != null:
return success(_that.at,_that.pushedCount,_that.fetchedCount);case SyncError() when error != null:
return error(_that.message,_that.at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function( int progressedEventCount)  syncing,required TResult Function( DateTime at,  int pushedCount,  int fetchedCount)  success,required TResult Function( String message,  DateTime? at)  error,}) {final _that = this;
switch (_that) {
case SyncIdle():
return idle();case SyncSyncing():
return syncing(_that.progressedEventCount);case SyncSuccess():
return success(_that.at,_that.pushedCount,_that.fetchedCount);case SyncError():
return error(_that.message,_that.at);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function( int progressedEventCount)?  syncing,TResult? Function( DateTime at,  int pushedCount,  int fetchedCount)?  success,TResult? Function( String message,  DateTime? at)?  error,}) {final _that = this;
switch (_that) {
case SyncIdle() when idle != null:
return idle();case SyncSyncing() when syncing != null:
return syncing(_that.progressedEventCount);case SyncSuccess() when success != null:
return success(_that.at,_that.pushedCount,_that.fetchedCount);case SyncError() when error != null:
return error(_that.message,_that.at);case _:
  return null;

}
}

}

/// @nodoc


class SyncIdle extends SyncStatus {
  const SyncIdle(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SyncStatus.idle()';
}


}




/// @nodoc


class SyncSyncing extends SyncStatus {
  const SyncSyncing({this.progressedEventCount = 0}): super._();
  

@JsonKey() final  int progressedEventCount;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncSyncingCopyWith<SyncSyncing> get copyWith => _$SyncSyncingCopyWithImpl<SyncSyncing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncSyncing&&(identical(other.progressedEventCount, progressedEventCount) || other.progressedEventCount == progressedEventCount));
}


@override
int get hashCode => Object.hash(runtimeType,progressedEventCount);

@override
String toString() {
  return 'SyncStatus.syncing(progressedEventCount: $progressedEventCount)';
}


}

/// @nodoc
abstract mixin class $SyncSyncingCopyWith<$Res> implements $SyncStatusCopyWith<$Res> {
  factory $SyncSyncingCopyWith(SyncSyncing value, $Res Function(SyncSyncing) _then) = _$SyncSyncingCopyWithImpl;
@useResult
$Res call({
 int progressedEventCount
});




}
/// @nodoc
class _$SyncSyncingCopyWithImpl<$Res>
    implements $SyncSyncingCopyWith<$Res> {
  _$SyncSyncingCopyWithImpl(this._self, this._then);

  final SyncSyncing _self;
  final $Res Function(SyncSyncing) _then;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progressedEventCount = null,}) {
  return _then(SyncSyncing(
progressedEventCount: null == progressedEventCount ? _self.progressedEventCount : progressedEventCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SyncSuccess extends SyncStatus {
  const SyncSuccess({required this.at, this.pushedCount = 0, this.fetchedCount = 0}): super._();
  

 final  DateTime at;
@JsonKey() final  int pushedCount;
@JsonKey() final  int fetchedCount;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncSuccessCopyWith<SyncSuccess> get copyWith => _$SyncSuccessCopyWithImpl<SyncSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncSuccess&&(identical(other.at, at) || other.at == at)&&(identical(other.pushedCount, pushedCount) || other.pushedCount == pushedCount)&&(identical(other.fetchedCount, fetchedCount) || other.fetchedCount == fetchedCount));
}


@override
int get hashCode => Object.hash(runtimeType,at,pushedCount,fetchedCount);

@override
String toString() {
  return 'SyncStatus.success(at: $at, pushedCount: $pushedCount, fetchedCount: $fetchedCount)';
}


}

/// @nodoc
abstract mixin class $SyncSuccessCopyWith<$Res> implements $SyncStatusCopyWith<$Res> {
  factory $SyncSuccessCopyWith(SyncSuccess value, $Res Function(SyncSuccess) _then) = _$SyncSuccessCopyWithImpl;
@useResult
$Res call({
 DateTime at, int pushedCount, int fetchedCount
});




}
/// @nodoc
class _$SyncSuccessCopyWithImpl<$Res>
    implements $SyncSuccessCopyWith<$Res> {
  _$SyncSuccessCopyWithImpl(this._self, this._then);

  final SyncSuccess _self;
  final $Res Function(SyncSuccess) _then;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? at = null,Object? pushedCount = null,Object? fetchedCount = null,}) {
  return _then(SyncSuccess(
at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,pushedCount: null == pushedCount ? _self.pushedCount : pushedCount // ignore: cast_nullable_to_non_nullable
as int,fetchedCount: null == fetchedCount ? _self.fetchedCount : fetchedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SyncError extends SyncStatus {
  const SyncError({required this.message, this.at}): super._();
  

 final  String message;
 final  DateTime? at;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncErrorCopyWith<SyncError> get copyWith => _$SyncErrorCopyWithImpl<SyncError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncError&&(identical(other.message, message) || other.message == message)&&(identical(other.at, at) || other.at == at));
}


@override
int get hashCode => Object.hash(runtimeType,message,at);

@override
String toString() {
  return 'SyncStatus.error(message: $message, at: $at)';
}


}

/// @nodoc
abstract mixin class $SyncErrorCopyWith<$Res> implements $SyncStatusCopyWith<$Res> {
  factory $SyncErrorCopyWith(SyncError value, $Res Function(SyncError) _then) = _$SyncErrorCopyWithImpl;
@useResult
$Res call({
 String message, DateTime? at
});




}
/// @nodoc
class _$SyncErrorCopyWithImpl<$Res>
    implements $SyncErrorCopyWith<$Res> {
  _$SyncErrorCopyWithImpl(this._self, this._then);

  final SyncError _self;
  final $Res Function(SyncError) _then;

/// Create a copy of SyncStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? at = freezed,}) {
  return _then(SyncError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,at: freezed == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
