import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';

@lazySingleton
class GetQuestionSetsFromFixtures implements UseCase<List<QuestionSet>, NoParams> {
  final QuestionSetsRepository repository;

  GetQuestionSetsFromFixtures(this.repository);

  @override
  ResultFuture<List<QuestionSet>> call(NoParams params) async {
    return await repository.getQuestionSetsFromFixtures();
  }
}