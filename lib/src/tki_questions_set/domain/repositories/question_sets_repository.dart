import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/typedef.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

abstract class QuestionSetsRepository {
  ResultFuture<List<QuestionSet>> getQuestionSetsFromFixtures();

  ResultFuture<List<QuestionSet>> getQuestionSetsFromMemory();

  ResultFuture<QuestionSet> getQuestionSetFromFile();

  ResultFuture<Success> saveQuestionSet(QuestionSet questionSet);
  
  ResultFuture<Success> deleteQuestionSet(int index, QuestionSet questionSet);
}