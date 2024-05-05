part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.loadLanguage() = LoadLanguage;
  const factory LanguageEvent.changeLanguage({required String languageCode}) =
      ChangeLanguage;
}
