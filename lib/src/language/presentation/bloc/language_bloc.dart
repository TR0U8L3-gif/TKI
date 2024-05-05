import 'dart:ui';
import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/config/l10n/l10n.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';
part 'language_bloc.g.dart';

@singleton
class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState(status: LoadingStatus.loaded, currentLanguage: L10n.allLanguages.first)) {
    on<LoadLanguage>((event, emit) {
      // TODO: implement loading other languages
    });
    on<ChangeLanguage>(_onChangeLanguage);
  }

  void _onChangeLanguage(event, emit) {
    final oldLanguage = state.currentLanguage;
    emit(LanguageState(status: LoadingStatus.loading, currentLanguage: oldLanguage));
    Locale? newLanguage = L10n.isSupported(event.languageCode);
    if (newLanguage != null) {
      emit(LanguageState(status: LoadingStatus.loaded, currentLanguage: newLanguage));
    } else {
      Fimber.w('Language ${event.languageCode} is not supported');
      emit(LanguageState(status: LoadingStatus.loaded, currentLanguage: oldLanguage));
    }
  }
  
  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    return LanguageState.fromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    return state.toJson();
  }
}
