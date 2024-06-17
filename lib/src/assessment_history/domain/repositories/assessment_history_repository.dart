import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';

abstract class AssessmentHistoryRepository {
  ResultFuture<List<AssessmentHistory>> getAssessmentHistoryList();
  ResultFuture<Success> deleteAssessmentHistory(int index, AssessmentHistory assessmentHistory);
}