import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';
import 'package:tki_app/src/assessment_history/domain/repositories/assessment_history_repository.dart';

@lazySingleton
class GetAssessmentsHistoryFromMemory extends UseCase<List<AssessmentHistory>, NoParams> {
  GetAssessmentsHistoryFromMemory({required AssessmentHistoryRepository repository}) : _repository = repository;
  final AssessmentHistoryRepository _repository;

  @override
  Future<Either<Failure, List<AssessmentHistory>>> call(NoParams params) {
    return _repository.getAssessmentHistoryList();
  }
  
}