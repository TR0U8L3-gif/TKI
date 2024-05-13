import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question.dart';

part 'question_set.freezed.dart';
part 'question_set.g.dart';

@freezed
class QuestionSet with _$QuestionSet {
  factory QuestionSet({
    required String language,
    required String title,
    required String? imageUrl,
    required List<Question> questions,
  }) = _QuestionSet;

  factory QuestionSet.fromJson(Map<String, dynamic> json) =>
      _$QuestionSetFromJson(json);
}
