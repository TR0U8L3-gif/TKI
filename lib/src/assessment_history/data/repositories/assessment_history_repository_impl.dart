
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/assessment_history/data/data_sources/assessment_history_remote_data_source.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';
import 'package:tki_app/src/assessment_history/domain/repositories/assessment_history_repository.dart';

@LazySingleton(as: AssessmentHistoryRepository)
class AssessmentHistoryRepositoryImpl implements AssessmentHistoryRepository {
  
  AssessmentHistoryRepositoryImpl({required this.remoteDataSource});
  
  final AssessmentHistoryRemoteDataSource remoteDataSource;

  @override
  ResultFuture<List<AssessmentHistory>> getAssessmentHistoryList() async {
    try {
      final assessmentHistories = await remoteDataSource.getAssessmentHistoryList();
      return Right(assessmentHistories);
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
          message: 'Failed to get assessment history list',
          description:  e.toString(),
          statusCode: 400,
        ),
      );
    }
  }
  
  @override
  ResultFuture<Success> deleteAssessmentHistory(int index, AssessmentHistory assessmentHistory) async {
    try {
      final isDeleted =
          await remoteDataSource.deleteAssessmentHistory(index, assessmentHistory);
      return Right(CacheSuccess(
          message:
              '${isDeleted ? 'Succeeded' : 'Failed'} to delete Assessment History',
          description: 'Operation performed on [Assessment History] object with title: "${assessmentHistory.title}" and index: $index',
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
          message: 'Failed to delete assessment history',
          description: e.toString(),
          statusCode: 400,
        ),
      );
    }
  }
}