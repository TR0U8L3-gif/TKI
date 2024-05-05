part of 'language_bloc.dart';

enum LoadingStatus { loading, loaded }

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required LoadingStatus status,
    @LocaleConverter() required Locale currentLanguage,
  }) = _LanguageState;

  factory LanguageState.fromJson(Map<String, dynamic> json) =>
      _$LanguageStateFromJson(json);
}

class LocaleConverter implements JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String languageCode) {
    return L10n.isSupported(languageCode) ?? L10n.allLanguages.first;
  }

  @override
  String toJson(Locale object) {
    return object.languageCode;
  }
}
