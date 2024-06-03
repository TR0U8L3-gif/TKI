import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@lazySingleton
class GetQuestionSetFromFile extends UseCase<QuestionSet,NoParams> {
  GetQuestionSetFromFile({required QuestionSetsRepository repository}) : _repository = repository;
  final QuestionSetsRepository _repository;

  @override
 ResultFuture<QuestionSet> call(NoParams params) async {
    return await _repository.getQuestionSetFromFile();
  }
  
}
