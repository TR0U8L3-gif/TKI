import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

part 'assessment_history.freezed.dart';
part 'assessment_history.g.dart';

@freezed
class AssessmentHistory with _$AssessmentHistory {

  factory AssessmentHistory({
    required String title,
    required String name,
    required DateTime date,
    required int collaborating,
    required int competing,
    required int accommodating,
    required int avoiding,
    required int compromising,
    required int score,
    required QuestionSet questionSet,
  }) = _AssessmentHistory;

  factory AssessmentHistory.fromJson(Map<String, dynamic> json) => _$AssessmentHistoryFromJson(json);
}