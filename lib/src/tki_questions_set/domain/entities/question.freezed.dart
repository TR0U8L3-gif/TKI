// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get firstType => throw _privateConstructorUsedError;
  String get secondType => throw _privateConstructorUsedError;
  String get firstQuestion => throw _privateConstructorUsedError;
  String get secondQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String firstType,
      String secondType,
      String firstQuestion,
      String secondQuestion});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstType = null,
    Object? secondType = null,
    Object? firstQuestion = null,
    Object? secondQuestion = null,
  }) {
    return _then(_value.copyWith(
      firstType: null == firstType
          ? _value.firstType
          : firstType // ignore: cast_nullable_to_non_nullable
              as String,
      secondType: null == secondType
          ? _value.secondType
          : secondType // ignore: cast_nullable_to_non_nullable
              as String,
      firstQuestion: null == firstQuestion
          ? _value.firstQuestion
          : firstQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      secondQuestion: null == secondQuestion
          ? _value.secondQuestion
          : secondQuestion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstType,
      String secondType,
      String firstQuestion,
      String secondQuestion});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstType = null,
    Object? secondType = null,
    Object? firstQuestion = null,
    Object? secondQuestion = null,
  }) {
    return _then(_$QuestionImpl(
      firstType: null == firstType
          ? _value.firstType
          : firstType // ignore: cast_nullable_to_non_nullable
              as String,
      secondType: null == secondType
          ? _value.secondType
          : secondType // ignore: cast_nullable_to_non_nullable
              as String,
      firstQuestion: null == firstQuestion
          ? _value.firstQuestion
          : firstQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      secondQuestion: null == secondQuestion
          ? _value.secondQuestion
          : secondQuestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  _$QuestionImpl(
      {required this.firstType,
      required this.secondType,
      required this.firstQuestion,
      required this.secondQuestion});

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String firstType;
  @override
  final String secondType;
  @override
  final String firstQuestion;
  @override
  final String secondQuestion;

  @override
  String toString() {
    return 'Question(firstType: $firstType, secondType: $secondType, firstQuestion: $firstQuestion, secondQuestion: $secondQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.firstType, firstType) ||
                other.firstType == firstType) &&
            (identical(other.secondType, secondType) ||
                other.secondType == secondType) &&
            (identical(other.firstQuestion, firstQuestion) ||
                other.firstQuestion == firstQuestion) &&
            (identical(other.secondQuestion, secondQuestion) ||
                other.secondQuestion == secondQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstType, secondType, firstQuestion, secondQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  factory _Question(
      {required final String firstType,
      required final String secondType,
      required final String firstQuestion,
      required final String secondQuestion}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get firstType;
  @override
  String get secondType;
  @override
  String get firstQuestion;
  @override
  String get secondQuestion;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
