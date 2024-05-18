import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@LazySingleton(as: QuestionSetsRepository) 
class QuestionSetsRepositoryImpl implements QuestionSetsRepository {

  QuestionSetsRepositoryImpl({required this.localDataSource});

  final QuestionSetsLocalDataSource localDataSource;

  @override
  ResultFuture<List<QuestionSet>> getQuestionSetsFromFixtures() {
    return _getQuestionSets(() => localDataSource.getQuestionSetsFromFixtures());
  }

  ResultFuture<T> _getQuestionSets<T>(Future<T> Function() function) async {
    try {
      final questionSet = await function();
      return Right(questionSet);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(
        UnknownFailure(
          message: e.toString(),
          statusCode: 400,
        ),
      );
    }
  }
}
