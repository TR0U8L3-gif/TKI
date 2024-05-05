// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(String languageCode) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(String languageCode)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(String languageCode)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguage value) loadLanguage,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguage value)? loadLanguage,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguage value)? loadLanguage,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadLanguageImplCopyWith<$Res> {
  factory _$$LoadLanguageImplCopyWith(
          _$LoadLanguageImpl value, $Res Function(_$LoadLanguageImpl) then) =
      __$$LoadLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LoadLanguageImpl>
    implements _$$LoadLanguageImplCopyWith<$Res> {
  __$$LoadLanguageImplCopyWithImpl(
      _$LoadLanguageImpl _value, $Res Function(_$LoadLanguageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadLanguageImpl implements LoadLanguage {
  const _$LoadLanguageImpl();

  @override
  String toString() {
    return 'LanguageEvent.loadLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(String languageCode) changeLanguage,
  }) {
    return loadLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(String languageCode)? changeLanguage,
  }) {
    return loadLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(String languageCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguage value) loadLanguage,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return loadLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguage value)? loadLanguage,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return loadLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguage value)? loadLanguage,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage(this);
    }
    return orElse();
  }
}

abstract class LoadLanguage implements LanguageEvent {
  const factory LoadLanguage() = _$LoadLanguageImpl;
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements ChangeLanguage {
  const _$ChangeLanguageImpl({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LanguageEvent.changeLanguage(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(String languageCode) changeLanguage,
  }) {
    return changeLanguage(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(String languageCode)? changeLanguage,
  }) {
    return changeLanguage?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(String languageCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadLanguage value) loadLanguage,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadLanguage value)? loadLanguage,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadLanguage value)? loadLanguage,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguage implements LanguageEvent {
  const factory ChangeLanguage({required final String languageCode}) =
      _$ChangeLanguageImpl;

  String get languageCode;
  @JsonKey(ignore: true)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageState _$LanguageStateFromJson(Map<String, dynamic> json) {
  return _LanguageState.fromJson(json);
}

/// @nodoc
mixin _$LanguageState {
  LoadingStatus get status => throw _privateConstructorUsedError;
  @LocaleConverter()
  Locale get currentLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({LoadingStatus status, @LocaleConverter() Locale currentLanguage});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentLanguage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      currentLanguage: null == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingStatus status, @LocaleConverter() Locale currentLanguage});
}

/// @nodoc
class __$$LanguageStateImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateImpl>
    implements _$$LanguageStateImplCopyWith<$Res> {
  __$$LanguageStateImplCopyWithImpl(
      _$LanguageStateImpl _value, $Res Function(_$LanguageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentLanguage = null,
  }) {
    return _then(_$LanguageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      currentLanguage: null == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageStateImpl implements _LanguageState {
  const _$LanguageStateImpl(
      {required this.status, @LocaleConverter() required this.currentLanguage});

  factory _$LanguageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageStateImplFromJson(json);

  @override
  final LoadingStatus status;
  @override
  @LocaleConverter()
  final Locale currentLanguage;

  @override
  String toString() {
    return 'LanguageState(status: $status, currentLanguage: $currentLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, currentLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      __$$LanguageStateImplCopyWithImpl<_$LanguageStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageStateImplToJson(
      this,
    );
  }
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
          {required final LoadingStatus status,
          @LocaleConverter() required final Locale currentLanguage}) =
      _$LanguageStateImpl;

  factory _LanguageState.fromJson(Map<String, dynamic> json) =
      _$LanguageStateImpl.fromJson;

  @override
  LoadingStatus get status;
  @override
  @LocaleConverter()
  Locale get currentLanguage;
  @override
  @JsonKey(ignore: true)
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
