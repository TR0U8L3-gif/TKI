import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@lazySingleton
class DeleteQuestionSet extends UseCase<Success,DeleteQuestionSetParams> {
  DeleteQuestionSet({required QuestionSetsRepository repository}) : _repository = repository;
  final QuestionSetsRepository _repository;
  
  @override
  Future<Either<Failure, Success>> call(DeleteQuestionSetParams params) {
    return _repository.deleteQuestionSet(params.index, params.questionSet);
  }
  
}

class DeleteQuestionSetParams {
  DeleteQuestionSetParams({ required this.index, required this.questionSet});
  final int index;
  final QuestionSet questionSet;
}