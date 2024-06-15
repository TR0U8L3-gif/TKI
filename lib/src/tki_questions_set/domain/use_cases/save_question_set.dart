import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@lazySingleton
class SaveQuestionSet extends UseCase<bool,SaveQuestionSetParams> {
  SaveQuestionSet({required QuestionSetsRepository repository}) : _repository = repository;
  final QuestionSetsRepository _repository;

  @override
  Future<Either<Failure, bool>> call(SaveQuestionSetParams params) {
    return _repository.saveQuestionSet(params.questionSet);
  }
  
}

class SaveQuestionSetParams {
  SaveQuestionSetParams({required this.questionSet});
  final QuestionSet questionSet;
}