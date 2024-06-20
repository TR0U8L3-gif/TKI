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
import '../../src/assessment_history/data/data_sources/assessment_history_remote_data_source.dart'
    as _i8;
import '../../src/assessment_history/data/repositories/assessment_history_repository_impl.dart'
    as _i18;
import '../../src/assessment_history/domain/repositories/assessment_history_repository.dart'
    as _i17;
import '../../src/assessment_history/domain/use_cases/delete_assessment_history.dart'
    as _i21;
import '../../src/assessment_history/domain/use_cases/get_assessments_history_from_memory.dart'
    as _i20;
import '../../src/assessment_history/presentation/bloc/assessment_history_bloc.dart'
    as _i22;
import '../../src/language/presentation/bloc/language_bloc.dart' as _i5;
import '../../src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart'
    as _i9;
import '../../src/tki_questions_set/data/data_sources/question_sets_remote_data_source.dart'
    as _i7;
import '../../src/tki_questions_set/data/repositories/question_sets_repository_impl.dart'
    as _i11;
import '../../src/tki_questions_set/domain/repositories/question_sets_repository.dart'
    as _i10;
import '../../src/tki_questions_set/domain/use_cases/delete_question_set.dart'
    as _i12;
import '../../src/tki_questions_set/domain/use_cases/get_question_set_from_file.dart'
    as _i15;
import '../../src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart'
    as _i13;
import '../../src/tki_questions_set/domain/use_cases/get_question_sets_from_memory.dart'
    as _i14;
import '../../src/tki_questions_set/domain/use_cases/save_question_set.dart'
    as _i16;
import '../../src/tki_questions_set/presentation/bloc/tki_question_set_bloc.dart'
    as _i19;
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
    gh.factory<_i3.AssessmentHistoryHiveManager>(
        () => _i3.AssessmentHistoryHiveManager());
    gh.singleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.singleton<_i5.LanguageBloc>(() => _i5.LanguageBloc());
    gh.lazySingleton<_i6.FixtureReader>(() => _i6.FixtureReader());
    gh.lazySingleton<_i7.QuestionSetsRemoteDataSource>(() =>
        _i7.QuestionSetsRemoteDataSourceImpl(
            hive: gh<_i3.QuestionSetsHiveManager>()));
    gh.lazySingleton<_i8.AssessmentHistoryRemoteDataSource>(() =>
        _i8.AssessmentHistoryRemoteDataSourceImpl(
            hive: gh<_i3.AssessmentHistoryHiveManager>()));
    gh.lazySingleton<_i9.QuestionSetsLocalDataSource>(() =>
        _i9.QuestionSetsLocalDataSourceImpl(
            fixtureReader: gh<_i6.FixtureReader>()));
    gh.lazySingleton<_i10.QuestionSetsRepository>(
        () => _i11.QuestionSetsRepositoryImpl(
              localDataSource: gh<_i9.QuestionSetsLocalDataSource>(),
              remoteDataSource: gh<_i7.QuestionSetsRemoteDataSource>(),
            ));
    gh.lazySingleton<_i12.DeleteQuestionSet>(() =>
        _i12.DeleteQuestionSet(repository: gh<_i10.QuestionSetsRepository>()));
    gh.lazySingleton<_i13.GetQuestionSetsFromFixtures>(() =>
        _i13.GetQuestionSetsFromFixtures(
            repository: gh<_i10.QuestionSetsRepository>()));
    gh.lazySingleton<_i14.GetQuestionSetsFromMemory>(() =>
        _i14.GetQuestionSetsFromMemory(
            repository: gh<_i10.QuestionSetsRepository>()));
    gh.lazySingleton<_i15.GetQuestionSetFromFile>(() =>
        _i15.GetQuestionSetFromFile(
            repository: gh<_i10.QuestionSetsRepository>()));
    gh.lazySingleton<_i16.SaveQuestionSet>(() =>
        _i16.SaveQuestionSet(repository: gh<_i10.QuestionSetsRepository>()));
    gh.lazySingleton<_i17.AssessmentHistoryRepository>(() =>
        _i18.AssessmentHistoryRepositoryImpl(
            remoteDataSource: gh<_i8.AssessmentHistoryRemoteDataSource>()));
    gh.factory<_i19.TkiQuestionSetBloc>(() => _i19.TkiQuestionSetBloc(
          getQuestionSetsFromFixtures: gh<_i13.GetQuestionSetsFromFixtures>(),
          getQuestionSetFromFile: gh<_i15.GetQuestionSetFromFile>(),
          getQuestionSetsFromMemory: gh<_i14.GetQuestionSetsFromMemory>(),
          saveQuestionSet: gh<_i16.SaveQuestionSet>(),
          deleteQuestionSet: gh<_i12.DeleteQuestionSet>(),
        ));
    gh.lazySingleton<_i20.GetAssessmentsHistoryFromMemory>(() =>
        _i20.GetAssessmentsHistoryFromMemory(
            repository: gh<_i17.AssessmentHistoryRepository>()));
    gh.lazySingleton<_i21.DeleteAssessmentHistory>(() =>
        _i21.DeleteAssessmentHistory(
            repository: gh<_i17.AssessmentHistoryRepository>()));
    gh.factory<_i22.AssessmentHistoryBloc>(() => _i22.AssessmentHistoryBloc(
          getAssessmentHistoryList: gh<_i20.GetAssessmentsHistoryFromMemory>(),
          deleteAssessmentHistory: gh<_i21.DeleteAssessmentHistory>(),
        ));
    return this;
  }
}
