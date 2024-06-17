part of 'tki_question_set_bloc.dart';

/// `local` define data that is stored in the fixtures
/// `remote` define data that is stored in the device 
@freezed
class TkiQuestionSetState with _$TkiQuestionSetState {
  const factory TkiQuestionSetState.initial() = InitialState;
  const factory TkiQuestionSetState.idle({
    required bool isLoadingLocal, 
    required bool isLoadingRemote, 
    required List<QuestionSet> questionSetsLocal,
    required List<QuestionSet> questionSetsRemote,
  }) = IdleState;
  const factory TkiQuestionSetState.error({
    required IdleState previousState,
    required Failure failure,
  }) = ErrorState;
  const factory TkiQuestionSetState.success({
    required IdleState previousState,
    required Success success,
  }) = SuccessState;


}
