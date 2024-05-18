part of 'tki_question_set_bloc.dart';

@freezed
class TkiQuestionSetEvent with _$TkiQuestionSetEvent {
  const factory TkiQuestionSetEvent.getQuestionSetsFromFixtures() = GetFromFixturesEvent;
  const factory TkiQuestionSetEvent.getQuestionSetsFromDevice() = GetFromDeviceEvent;
}