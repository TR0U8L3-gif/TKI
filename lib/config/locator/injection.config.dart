// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/helpers/fixture_reader.dart' as _i6;
import '../../core/helpers/hive_manager.dart' as _i3;
import '../../src/language/presentation/bloc/language_bloc.dart' as _i5;
import '../../src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart'
    as _i8;
import '../../src/tki_questions_set/data/data_sources/question_sets_remote_data_source.dart'
    as _i7;
import '../../src/tki_questions_set/data/repositories/question_sets_repository_impl.dart'
    as _i10;
import '../../src/tki_questions_set/domain/repositories/question_sets_repository.dart'
    as _i9;
import '../../src/tki_questions_set/domain/use_cases/delete_question_set.dart'
    as _i15;
import '../../src/tki_questions_set/domain/use_cases/get_question_set_from_file.dart'
    as _i13;
import '../../src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart'
    as _i11;
import '../../src/tki_questions_set/domain/use_cases/get_question_sets_from_memory.dart'
    as _i12;
import '../../src/tki_questions_set/domain/use_cases/save_question_set.dart'
    as _i14;
import '../../src/tki_questions_set/presentation/bloc/tki_question_set_bloc.dart'
    as _i16;
import '../routes/app_router.dart' as _i4;

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
    gh.factory<_i3.QuestionSetsHiveManager>(
        () => _i3.QuestionSetsHiveManager());
    gh.singleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.singleton<_i5.LanguageBloc>(() => _i5.LanguageBloc());
    gh.lazySingleton<_i6.FixtureReader>(() => _i6.FixtureReader());
    gh.lazySingleton<_i7.QuestionSetsRemoteDataSource>(() =>
        _i7.QuestionSetsRemoteDataSourceImpl(
            hive: gh<_i3.QuestionSetsHiveManager>()));
    gh.lazySingleton<_i8.QuestionSetsLocalDataSource>(() =>
        _i8.QuestionSetsLocalDataSourceImpl(
            fixtureReader: gh<_i6.FixtureReader>()));
    gh.lazySingleton<_i9.QuestionSetsRepository>(
        () => _i10.QuestionSetsRepositoryImpl(
              localDataSource: gh<_i8.QuestionSetsLocalDataSource>(),
              remoteDataSource: gh<_i7.QuestionSetsRemoteDataSource>(),
            ));
    gh.lazySingleton<_i11.GetQuestionSetsFromFixtures>(() =>
        _i11.GetQuestionSetsFromFixtures(
            repository: gh<_i9.QuestionSetsRepository>()));
    gh.lazySingleton<_i12.GetQuestionSetsFromMemory>(() =>
        _i12.GetQuestionSetsFromMemory(
            repository: gh<_i9.QuestionSetsRepository>()));
    gh.lazySingleton<_i13.GetQuestionSetFromFile>(() =>
        _i13.GetQuestionSetFromFile(
            repository: gh<_i9.QuestionSetsRepository>()));
    gh.lazySingleton<_i14.SaveQuestionSet>(() =>
        _i14.SaveQuestionSet(repository: gh<_i9.QuestionSetsRepository>()));
    gh.lazySingleton<_i15.DeleteQuestionSet>(() =>
        _i15.DeleteQuestionSet(repository: gh<_i9.QuestionSetsRepository>()));
    gh.factory<_i16.TkiQuestionSetBloc>(() => _i16.TkiQuestionSetBloc(
          getQuestionSetsFromFixtures: gh<_i11.GetQuestionSetsFromFixtures>(),
          getQuestionSetFromFile: gh<_i13.GetQuestionSetFromFile>(),
          getQuestionSetsFromMemory: gh<_i12.GetQuestionSetsFromMemory>(),
          saveQuestionSet: gh<_i14.SaveQuestionSet>(),
          deleteQuestionSet: gh<_i15.DeleteQuestionSet>(),
        ));
    return this;
  }
}
