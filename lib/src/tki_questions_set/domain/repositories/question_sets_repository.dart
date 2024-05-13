import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

abstract class QuestionSetsRepository {
  ResultFuture<List<QuestionSet>> getQuestionSetsFromFixtures();
}