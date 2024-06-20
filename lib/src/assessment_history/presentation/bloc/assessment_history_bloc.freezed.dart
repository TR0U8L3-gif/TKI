// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssessmentHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAssessmentHistoryList,
    required TResult Function(int index, AssessmentHistory assessmentHistory)
        deleteAssessmentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAssessmentHistoryList,
    TResult? Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAssessmentHistoryList,
    TResult Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFromMemoryEvent value)
        getAssessmentHistoryList,
    required TResult Function(DeleteAssessmentEvent value)
        deleteAssessmentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult? Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentHistoryEventCopyWith<$Res> {
  factory $AssessmentHistoryEventCopyWith(AssessmentHistoryEvent value,
          $Res Function(AssessmentHistoryEvent) then) =
      _$AssessmentHistoryEventCopyWithImpl<$Res, AssessmentHistoryEvent>;
}

/// @nodoc
class _$AssessmentHistoryEventCopyWithImpl<$Res,
        $Val extends AssessmentHistoryEvent>
    implements $AssessmentHistoryEventCopyWith<$Res> {
  _$AssessmentHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFromMemoryEventImplCopyWith<$Res> {
  factory _$$GetFromMemoryEventImplCopyWith(_$GetFromMemoryEventImpl value,
          $Res Function(_$GetFromMemoryEventImpl) then) =
      __$$GetFromMemoryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFromMemoryEventImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryEventCopyWithImpl<$Res, _$GetFromMemoryEventImpl>
    implements _$$GetFromMemoryEventImplCopyWith<$Res> {
  __$$GetFromMemoryEventImplCopyWithImpl(_$GetFromMemoryEventImpl _value,
      $Res Function(_$GetFromMemoryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFromMemoryEventImpl implements GetFromMemoryEvent {
  const _$GetFromMemoryEventImpl();

  @override
  String toString() {
    return 'AssessmentHistoryEvent.getAssessmentHistoryList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFromMemoryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAssessmentHistoryList,
    required TResult Function(int index, AssessmentHistory assessmentHistory)
        deleteAssessmentHistory,
  }) {
    return getAssessmentHistoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAssessmentHistoryList,
    TResult? Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
  }) {
    return getAssessmentHistoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAssessmentHistoryList,
    TResult Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
    required TResult orElse(),
  }) {
    if (getAssessmentHistoryList != null) {
      return getAssessmentHistoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFromMemoryEvent value)
        getAssessmentHistoryList,
    required TResult Function(DeleteAssessmentEvent value)
        deleteAssessmentHistory,
  }) {
    return getAssessmentHistoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult? Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
  }) {
    return getAssessmentHistoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
    required TResult orElse(),
  }) {
    if (getAssessmentHistoryList != null) {
      return getAssessmentHistoryList(this);
    }
    return orElse();
  }
}

abstract class GetFromMemoryEvent implements AssessmentHistoryEvent {
  const factory GetFromMemoryEvent() = _$GetFromMemoryEventImpl;
}

/// @nodoc
abstract class _$$DeleteAssessmentEventImplCopyWith<$Res> {
  factory _$$DeleteAssessmentEventImplCopyWith(
          _$DeleteAssessmentEventImpl value,
          $Res Function(_$DeleteAssessmentEventImpl) then) =
      __$$DeleteAssessmentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, AssessmentHistory assessmentHistory});

  $AssessmentHistoryCopyWith<$Res> get assessmentHistory;
}

/// @nodoc
class __$$DeleteAssessmentEventImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryEventCopyWithImpl<$Res,
        _$DeleteAssessmentEventImpl>
    implements _$$DeleteAssessmentEventImplCopyWith<$Res> {
  __$$DeleteAssessmentEventImplCopyWithImpl(_$DeleteAssessmentEventImpl _value,
      $Res Function(_$DeleteAssessmentEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? assessmentHistory = null,
  }) {
    return _then(_$DeleteAssessmentEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == assessmentHistory
          ? _value.assessmentHistory
          : assessmentHistory // ignore: cast_nullable_to_non_nullable
              as AssessmentHistory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentHistoryCopyWith<$Res> get assessmentHistory {
    return $AssessmentHistoryCopyWith<$Res>(_value.assessmentHistory, (value) {
      return _then(_value.copyWith(assessmentHistory: value));
    });
  }
}

/// @nodoc

class _$DeleteAssessmentEventImpl implements DeleteAssessmentEvent {
  const _$DeleteAssessmentEventImpl(this.index, this.assessmentHistory);

  @override
  final int index;
  @override
  final AssessmentHistory assessmentHistory;

  @override
  String toString() {
    return 'AssessmentHistoryEvent.deleteAssessmentHistory(index: $index, assessmentHistory: $assessmentHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAssessmentEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.assessmentHistory, assessmentHistory) ||
                other.assessmentHistory == assessmentHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, assessmentHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAssessmentEventImplCopyWith<_$DeleteAssessmentEventImpl>
      get copyWith => __$$DeleteAssessmentEventImplCopyWithImpl<
          _$DeleteAssessmentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAssessmentHistoryList,
    required TResult Function(int index, AssessmentHistory assessmentHistory)
        deleteAssessmentHistory,
  }) {
    return deleteAssessmentHistory(index, assessmentHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAssessmentHistoryList,
    TResult? Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
  }) {
    return deleteAssessmentHistory?.call(index, assessmentHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAssessmentHistoryList,
    TResult Function(int index, AssessmentHistory assessmentHistory)?
        deleteAssessmentHistory,
    required TResult orElse(),
  }) {
    if (deleteAssessmentHistory != null) {
      return deleteAssessmentHistory(index, assessmentHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFromMemoryEvent value)
        getAssessmentHistoryList,
    required TResult Function(DeleteAssessmentEvent value)
        deleteAssessmentHistory,
  }) {
    return deleteAssessmentHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult? Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
  }) {
    return deleteAssessmentHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFromMemoryEvent value)? getAssessmentHistoryList,
    TResult Function(DeleteAssessmentEvent value)? deleteAssessmentHistory,
    required TResult orElse(),
  }) {
    if (deleteAssessmentHistory != null) {
      return deleteAssessmentHistory(this);
    }
    return orElse();
  }
}

abstract class DeleteAssessmentEvent implements AssessmentHistoryEvent {
  const factory DeleteAssessmentEvent(
          final int index, final AssessmentHistory assessmentHistory) =
      _$DeleteAssessmentEventImpl;

  int get index;
  AssessmentHistory get assessmentHistory;
  @JsonKey(ignore: true)
  _$$DeleteAssessmentEventImplCopyWith<_$DeleteAssessmentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssessmentHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)
        idle,
    required TResult Function(IdleState previousState, Failure failure) error,
    required TResult Function(IdleState previousState, Success success) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult? Function(IdleState previousState, Failure failure)? error,
    TResult? Function(IdleState previousState, Success success)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult Function(IdleState previousState, Failure failure)? error,
    TResult Function(IdleState previousState, Success success)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentHistoryStateCopyWith<$Res> {
  factory $AssessmentHistoryStateCopyWith(AssessmentHistoryState value,
          $Res Function(AssessmentHistoryState) then) =
      _$AssessmentHistoryStateCopyWithImpl<$Res, AssessmentHistoryState>;
}

/// @nodoc
class _$AssessmentHistoryStateCopyWithImpl<$Res,
        $Val extends AssessmentHistoryState>
    implements $AssessmentHistoryStateCopyWith<$Res> {
  _$AssessmentHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AssessmentHistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)
        idle,
    required TResult Function(IdleState previousState, Failure failure) error,
    required TResult Function(IdleState previousState, Success success) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult? Function(IdleState previousState, Failure failure)? error,
    TResult? Function(IdleState previousState, Success success)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult Function(IdleState previousState, Failure failure)? error,
    TResult Function(IdleState previousState, Success success)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AssessmentHistoryState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<$Res> {
  factory _$$IdleStateImplCopyWith(
          _$IdleStateImpl value, $Res Function(_$IdleStateImpl) then) =
      __$$IdleStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, List<AssessmentHistory> assessmentHistoryList});
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(
      _$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? assessmentHistoryList = null,
  }) {
    return _then(_$IdleStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      assessmentHistoryList: null == assessmentHistoryList
          ? _value._assessmentHistoryList
          : assessmentHistoryList // ignore: cast_nullable_to_non_nullable
              as List<AssessmentHistory>,
    ));
  }
}

/// @nodoc

class _$IdleStateImpl implements IdleState {
  const _$IdleStateImpl(
      {required this.isLoading,
      required final List<AssessmentHistory> assessmentHistoryList})
      : _assessmentHistoryList = assessmentHistoryList;

  @override
  final bool isLoading;
  final List<AssessmentHistory> _assessmentHistoryList;
  @override
  List<AssessmentHistory> get assessmentHistoryList {
    if (_assessmentHistoryList is EqualUnmodifiableListView)
      return _assessmentHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessmentHistoryList);
  }

  @override
  String toString() {
    return 'AssessmentHistoryState.idle(isLoading: $isLoading, assessmentHistoryList: $assessmentHistoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._assessmentHistoryList, _assessmentHistoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_assessmentHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleStateImplCopyWith<_$IdleStateImpl> get copyWith =>
      __$$IdleStateImplCopyWithImpl<_$IdleStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)
        idle,
    required TResult Function(IdleState previousState, Failure failure) error,
    required TResult Function(IdleState previousState, Success success) success,
  }) {
    return idle(isLoading, assessmentHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult? Function(IdleState previousState, Failure failure)? error,
    TResult? Function(IdleState previousState, Success success)? success,
  }) {
    return idle?.call(isLoading, assessmentHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult Function(IdleState previousState, Failure failure)? error,
    TResult Function(IdleState previousState, Success success)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, assessmentHistoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState implements AssessmentHistoryState {
  const factory IdleState(
          {required final bool isLoading,
          required final List<AssessmentHistory> assessmentHistoryList}) =
      _$IdleStateImpl;

  bool get isLoading;
  List<AssessmentHistory> get assessmentHistoryList;
  @JsonKey(ignore: true)
  _$$IdleStateImplCopyWith<_$IdleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IdleState previousState, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousState = freezed,
    Object? failure = null,
  }) {
    return _then(_$ErrorStateImpl(
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as IdleState,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.previousState, required this.failure});

  @override
  final IdleState previousState;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'AssessmentHistoryState.error(previousState: $previousState, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality()
                .equals(other.previousState, previousState) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(previousState), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)
        idle,
    required TResult Function(IdleState previousState, Failure failure) error,
    required TResult Function(IdleState previousState, Success success) success,
  }) {
    return error(previousState, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult? Function(IdleState previousState, Failure failure)? error,
    TResult? Function(IdleState previousState, Success success)? success,
  }) {
    return error?.call(previousState, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult Function(IdleState previousState, Failure failure)? error,
    TResult Function(IdleState previousState, Success success)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(previousState, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AssessmentHistoryState {
  const factory ErrorState(
      {required final IdleState previousState,
      required final Failure failure}) = _$ErrorStateImpl;

  IdleState get previousState;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IdleState previousState, Success success});

  $SuccessCopyWith<$Res> get success;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AssessmentHistoryStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousState = freezed,
    Object? success = null,
  }) {
    return _then(_$SuccessStateImpl(
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as IdleState,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Success,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SuccessCopyWith<$Res> get success {
    return $SuccessCopyWith<$Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl(
      {required this.previousState, required this.success});

  @override
  final IdleState previousState;
  @override
  final Success success;

  @override
  String toString() {
    return 'AssessmentHistoryState.success(previousState: $previousState, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other.previousState, previousState) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(previousState), success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)
        idle,
    required TResult Function(IdleState previousState, Failure failure) error,
    required TResult Function(IdleState previousState, Success success) success,
  }) {
    return success(previousState, this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult? Function(IdleState previousState, Failure failure)? error,
    TResult? Function(IdleState previousState, Success success)? success,
  }) {
    return success?.call(previousState, this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isLoading, List<AssessmentHistory> assessmentHistoryList)?
        idle,
    TResult Function(IdleState previousState, Failure failure)? error,
    TResult Function(IdleState previousState, Success success)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(previousState, this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IdleState value) idle,
    required TResult Function(ErrorState value) error,
    required TResult Function(SuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(IdleState value)? idle,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IdleState value)? idle,
    TResult Function(ErrorState value)? error,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements AssessmentHistoryState {
  const factory SuccessState(
      {required final IdleState previousState,
      required final Success success}) = _$SuccessStateImpl;

  IdleState get previousState;
  Success get success;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
