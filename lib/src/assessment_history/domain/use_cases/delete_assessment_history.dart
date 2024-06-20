import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';
import 'package:tki_app/src/assessment_history/domain/repositories/assessment_history_repository.dart';

@lazySingleton
class DeleteAssessmentHistory extends UseCase<Success,DeleteAssessmentHistoryParams> {
  DeleteAssessmentHistory({required AssessmentHistoryRepository repository}) : _repository = repository;
  final AssessmentHistoryRepository _repository;

  @override
  Future<Either<Failure, Success>> call(DeleteAssessmentHistoryParams params) {
    return _repository.deleteAssessmentHistory(params.index, params.assessmentHistory);
  }
  
}

class DeleteAssessmentHistoryParams {
  DeleteAssessmentHistoryParams({ required this.index, required this.assessmentHistory});
  final int index;
  final AssessmentHistory assessmentHistory;
}