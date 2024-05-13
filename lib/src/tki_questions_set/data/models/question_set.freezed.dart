// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionSet _$QuestionSetFromJson(Map<String, dynamic> json) {
  return _QuestionSet.fromJson(json);
}

/// @nodoc
mixin _$QuestionSet {
  String get language => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionSetCopyWith<QuestionSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionSetCopyWith<$Res> {
  factory $QuestionSetCopyWith(
          QuestionSet value, $Res Function(QuestionSet) then) =
      _$QuestionSetCopyWithImpl<$Res, QuestionSet>;
  @useResult
  $Res call(
      {String language,
      String title,
      String? imageUrl,
      List<Question> questions});
}

/// @nodoc
class _$QuestionSetCopyWithImpl<$Res, $Val extends QuestionSet>
    implements $QuestionSetCopyWith<$Res> {
  _$QuestionSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionSetImplCopyWith<$Res>
    implements $QuestionSetCopyWith<$Res> {
  factory _$$QuestionSetImplCopyWith(
          _$QuestionSetImpl value, $Res Function(_$QuestionSetImpl) then) =
      __$$QuestionSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String language,
      String title,
      String? imageUrl,
      List<Question> questions});
}

/// @nodoc
class __$$QuestionSetImplCopyWithImpl<$Res>
    extends _$QuestionSetCopyWithImpl<$Res, _$QuestionSetImpl>
    implements _$$QuestionSetImplCopyWith<$Res> {
  __$$QuestionSetImplCopyWithImpl(
      _$QuestionSetImpl _value, $Res Function(_$QuestionSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? questions = null,
  }) {
    return _then(_$QuestionSetImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionSetImpl implements _QuestionSet {
  _$QuestionSetImpl(
      {required this.language,
      required this.title,
      required this.imageUrl,
      required final List<Question> questions})
      : _questions = questions;

  factory _$QuestionSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionSetImplFromJson(json);

  @override
  final String language;
  @override
  final String title;
  @override
  final String? imageUrl;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionSet(language: $language, title: $title, imageUrl: $imageUrl, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionSetImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, title, imageUrl,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionSetImplCopyWith<_$QuestionSetImpl> get copyWith =>
      __$$QuestionSetImplCopyWithImpl<_$QuestionSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionSetImplToJson(
      this,
    );
  }
}

abstract class _QuestionSet implements QuestionSet {
  factory _QuestionSet(
      {required final String language,
      required final String title,
      required final String? imageUrl,
      required final List<Question> questions}) = _$QuestionSetImpl;

  factory _QuestionSet.fromJson(Map<String, dynamic> json) =
      _$QuestionSetImpl.fromJson;

  @override
  String get language;
  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuestionSetImplCopyWith<_$QuestionSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
