part of 'assessment_history_bloc.dart';

@freezed
class AssessmentHistoryEvent with _$AssessmentHistoryEvent {
  const factory AssessmentHistoryEvent.getAssessmentHistoryList() = GetFromMemoryEvent;
  const factory AssessmentHistoryEvent.deleteAssessmentHistory(int index, AssessmentHistory assessmentHistory) = DeleteAssessmentEvent;
}