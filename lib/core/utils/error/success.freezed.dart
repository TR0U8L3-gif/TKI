// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Success {
  String get message => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSuccess value) serverSuccess,
    required TResult Function(CacheSuccess value) cacheSuccess,
    required TResult Function(UnknownSuccess value) unknownSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSuccess value)? serverSuccess,
    TResult? Function(CacheSuccess value)? cacheSuccess,
    TResult? Function(UnknownSuccess value)? unknownSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSuccess value)? serverSuccess,
    TResult Function(CacheSuccess value)? cacheSuccess,
    TResult Function(UnknownSuccess value)? unknownSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res, Success>;
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res, $Val extends Success>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSuccessImplCopyWith<$Res>
    implements $SuccessCopyWith<$Res> {
  factory _$$ServerSuccessImplCopyWith(
          _$ServerSuccessImpl value, $Res Function(_$ServerSuccessImpl) then) =
      __$$ServerSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$ServerSuccessImplCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$ServerSuccessImpl>
    implements _$$ServerSuccessImplCopyWith<$Res> {
  __$$ServerSuccessImplCopyWithImpl(
      _$ServerSuccessImpl _value, $Res Function(_$ServerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ServerSuccessImpl extends ServerSuccess {
  const _$ServerSuccessImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'Success.serverSuccess(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSuccessImplCopyWith<_$ServerSuccessImpl> get copyWith =>
      __$$ServerSuccessImplCopyWithImpl<_$ServerSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownSuccess,
  }) {
    return serverSuccess(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
  }) {
    return serverSuccess?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
    required TResult orElse(),
  }) {
    if (serverSuccess != null) {
      return serverSuccess(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSuccess value) serverSuccess,
    required TResult Function(CacheSuccess value) cacheSuccess,
    required TResult Function(UnknownSuccess value) unknownSuccess,
  }) {
    return serverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSuccess value)? serverSuccess,
    TResult? Function(CacheSuccess value)? cacheSuccess,
    TResult? Function(UnknownSuccess value)? unknownSuccess,
  }) {
    return serverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSuccess value)? serverSuccess,
    TResult Function(CacheSuccess value)? cacheSuccess,
    TResult Function(UnknownSuccess value)? unknownSuccess,
    required TResult orElse(),
  }) {
    if (serverSuccess != null) {
      return serverSuccess(this);
    }
    return orElse();
  }
}

abstract class ServerSuccess extends Success {
  const factory ServerSuccess(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$ServerSuccessImpl;
  const ServerSuccess._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerSuccessImplCopyWith<_$ServerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheSuccessImplCopyWith<$Res>
    implements $SuccessCopyWith<$Res> {
  factory _$$CacheSuccessImplCopyWith(
          _$CacheSuccessImpl value, $Res Function(_$CacheSuccessImpl) then) =
      __$$CacheSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$CacheSuccessImplCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$CacheSuccessImpl>
    implements _$$CacheSuccessImplCopyWith<$Res> {
  __$$CacheSuccessImplCopyWithImpl(
      _$CacheSuccessImpl _value, $Res Function(_$CacheSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$CacheSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CacheSuccessImpl extends CacheSuccess {
  const _$CacheSuccessImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'Success.cacheSuccess(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheSuccessImplCopyWith<_$CacheSuccessImpl> get copyWith =>
      __$$CacheSuccessImplCopyWithImpl<_$CacheSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownSuccess,
  }) {
    return cacheSuccess(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
  }) {
    return cacheSuccess?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
    required TResult orElse(),
  }) {
    if (cacheSuccess != null) {
      return cacheSuccess(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSuccess value) serverSuccess,
    required TResult Function(CacheSuccess value) cacheSuccess,
    required TResult Function(UnknownSuccess value) unknownSuccess,
  }) {
    return cacheSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSuccess value)? serverSuccess,
    TResult? Function(CacheSuccess value)? cacheSuccess,
    TResult? Function(UnknownSuccess value)? unknownSuccess,
  }) {
    return cacheSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSuccess value)? serverSuccess,
    TResult Function(CacheSuccess value)? cacheSuccess,
    TResult Function(UnknownSuccess value)? unknownSuccess,
    required TResult orElse(),
  }) {
    if (cacheSuccess != null) {
      return cacheSuccess(this);
    }
    return orElse();
  }
}

abstract class CacheSuccess extends Success {
  const factory CacheSuccess(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$CacheSuccessImpl;
  const CacheSuccess._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$CacheSuccessImplCopyWith<_$CacheSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownSuccessImplCopyWith<$Res>
    implements $SuccessCopyWith<$Res> {
  factory _$$UnknownSuccessImplCopyWith(_$UnknownSuccessImpl value,
          $Res Function(_$UnknownSuccessImpl) then) =
      __$$UnknownSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$UnknownSuccessImplCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$UnknownSuccessImpl>
    implements _$$UnknownSuccessImplCopyWith<$Res> {
  __$$UnknownSuccessImplCopyWithImpl(
      _$UnknownSuccessImpl _value, $Res Function(_$UnknownSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$UnknownSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownSuccessImpl extends UnknownSuccess {
  const _$UnknownSuccessImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'Success.unknownSuccess(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownSuccessImplCopyWith<_$UnknownSuccessImpl> get copyWith =>
      __$$UnknownSuccessImplCopyWithImpl<_$UnknownSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheSuccess,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownSuccess,
  }) {
    return unknownSuccess(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
  }) {
    return unknownSuccess?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheSuccess,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownSuccess,
    required TResult orElse(),
  }) {
    if (unknownSuccess != null) {
      return unknownSuccess(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSuccess value) serverSuccess,
    required TResult Function(CacheSuccess value) cacheSuccess,
    required TResult Function(UnknownSuccess value) unknownSuccess,
  }) {
    return unknownSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSuccess value)? serverSuccess,
    TResult? Function(CacheSuccess value)? cacheSuccess,
    TResult? Function(UnknownSuccess value)? unknownSuccess,
  }) {
    return unknownSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSuccess value)? serverSuccess,
    TResult Function(CacheSuccess value)? cacheSuccess,
    TResult Function(UnknownSuccess value)? unknownSuccess,
    required TResult orElse(),
  }) {
    if (unknownSuccess != null) {
      return unknownSuccess(this);
    }
    return orElse();
  }
}

abstract class UnknownSuccess extends Success {
  const factory UnknownSuccess(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$UnknownSuccessImpl;
  const UnknownSuccess._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UnknownSuccessImplCopyWith<_$UnknownSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
