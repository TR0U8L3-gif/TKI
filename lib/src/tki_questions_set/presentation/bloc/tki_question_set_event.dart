part of 'tki_question_set_bloc.dart';

@freezed
class TkiQuestionSetEvent with _$TkiQuestionSetEvent {
  const factory TkiQuestionSetEvent.getQuestionSetsFromMemory() = GetFromMemoryEvent;
  const factory TkiQuestionSetEvent.getAllQuestionSets() = GetAllEvent;
  const factory TkiQuestionSetEvent.getQuestionSetsFromFixtures() = GetFromFixturesEvent;
  const factory TkiQuestionSetEvent.getQuestionSetFromFile() = GetFromFileEvent;
  const factory TkiQuestionSetEvent.saveQuestionSet(QuestionSet questionSet) = _SaveQuestionSetEvent;
}