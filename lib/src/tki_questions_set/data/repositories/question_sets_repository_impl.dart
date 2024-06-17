import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart';
import 'package:tki_app/src/tki_questions_set/data/data_sources/question_sets_remote_data_source.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@LazySingleton(as: QuestionSetsRepository)
class QuestionSetsRepositoryImpl implements QuestionSetsRepository {
  QuestionSetsRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  final QuestionSetsLocalDataSource localDataSource;
  final QuestionSetsRemoteDataSource remoteDataSource;

  @override
  ResultFuture<List<QuestionSet>> getQuestionSetsFromFixtures() {
    return _getQuestionSets(
        () => localDataSource.getQuestionSetsFromFixtures());
  }

  @override
  ResultFuture<QuestionSet> getQuestionSetFromFile() {
    return _getQuestionSets(() => localDataSource.getQuestionSetFromFile());
  }

  @override
  ResultFuture<List<QuestionSet>> getQuestionSetsFromMemory() {
    return _getQuestionSets(() => remoteDataSource.getQuestionSetsFromMemory());
  }

  @override
  ResultFuture<Success> saveQuestionSet(QuestionSet questionSet) async {
    try {
      final isSaved = await remoteDataSource.saveQuestionSet(questionSet);
      return Right(Success.cacheSuccess(
        message: '${isSaved ? 'Succeeded' : 'Failed'} to save question set',
        description:
            'Operation performed on [Question Set] object with title: "${questionSet.title}"',
        statusCode: isSaved ? 100 : 500,
      ));
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } on UnknownException catch (e) {
      return Left(
        UnknownFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(
        UnknownFailure(
          message: 'Failed to save question set',
          description: e.toString(),
          statusCode: 400,
        ),
      );
    }
  }

  @override
  ResultFuture<Success> deleteQuestionSet(
      int index, QuestionSet questionSet) async {
    try {
      final isDeleted =
          await remoteDataSource.deleteQuestionSet(index, questionSet);
      return Right(CacheSuccess(
          message:
              '${isDeleted ? 'Succeeded' : 'Failed'} to delete Question Set',
          description: 'Operation performed on [Question Set] object with title: "${questionSet.title}" and index: $index',
          statusCode: isDeleted ? 100 : 500));
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } on UnknownException catch (e) {
      return Left(
        UnknownFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(
        UnknownFailure(
          message: 'Failed to delete question set',
          description: e.toString(),
          statusCode: 400,
        ),
      );
    }
  }

  ResultFuture<T> _getQuestionSets<T>(Future<T> Function() function) async {
    try {
      final questionSet = await function();
      return Right(questionSet);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } on UnknownException catch (e) {
      return Left(
        UnknownFailure(
          message: e.message,
          description: e.description,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(
        UnknownFailure(
          message: 'Failed to get question set',
          description:  e.toString(),
          statusCode: 400,
        ),
      );
    }
  }
}
