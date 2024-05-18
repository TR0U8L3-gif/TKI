// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/helpers/fixture_reader.dart' as _i5;
import '../../src/language/presentation/bloc/language_bloc.dart' as _i4;
import '../../src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart'
    as _i6;
import '../../src/tki_questions_set/data/repositories/question_sets_repository_impl.dart'
    as _i8;
import '../../src/tki_questions_set/domain/repositories/question_sets_repository.dart'
    as _i7;
import '../../src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart'
    as _i9;
import '../../src/tki_questions_set/presentation/bloc/tki_question_set_bloc.dart'
    as _i10;
import '../routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.singleton<_i4.LanguageBloc>(() => _i4.LanguageBloc());
    gh.lazySingleton<_i5.FixtureReader>(() => _i5.FixtureReader());
    gh.lazySingleton<_i6.QuestionSetsLocalDataSource>(() =>
        _i6.QuestionSetsLocalDataSourceImpl(
            fixtureReader: gh<_i5.FixtureReader>()));
    gh.lazySingleton<_i7.QuestionSetsRepository>(() =>
        _i8.QuestionSetsRepositoryImpl(
            localDataSource: gh<_i6.QuestionSetsLocalDataSource>()));
    gh.lazySingleton<_i9.GetQuestionSetsFromFixtures>(() =>
        _i9.GetQuestionSetsFromFixtures(gh<_i7.QuestionSetsRepository>()));
    gh.factory<_i10.TkiQuestionSetBloc>(() => _i10.TkiQuestionSetBloc(
        getQuestionSetsFromFixtures: gh<_i9.GetQuestionSetsFromFixtures>()));
    return this;
  }
}
