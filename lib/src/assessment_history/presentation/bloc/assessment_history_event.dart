part of 'assessment_history_bloc.dart';

@freezed
class AssessmentHistoryEvent with _$AssessmentHistoryEvent {
  const factory AssessmentHistoryEvent.started() = _Started;
}