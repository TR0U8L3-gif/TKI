part of 'assessment_history_bloc.dart';

@freezed
class AssessmentHistoryState with _$AssessmentHistoryState {
  const factory AssessmentHistoryState.initial() = InitialState;
  const factory AssessmentHistoryState.idle({
    required bool isLoading, 
    required List<AssessmentHistory> assessmentHistoryList,
  }) = IdleState;
  const factory AssessmentHistoryState.error({
    required IdleState previousState,
    required Failure failure,
  }) = ErrorState;
  const factory AssessmentHistoryState.success({
    required IdleState previousState,
    required Success success,
  }) = SuccessState;
}
