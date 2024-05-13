import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

abstract class QuestionSetsLocalDataSource {
  Future<List<QuestionSet>> getQuestionSetsFromFixtures();
}

class QuestionSetsLocalDataSourceImpl implements QuestionSetsLocalDataSource{
  @override
  Future<List<QuestionSet>> getQuestionSetsFromFixtures() {
    // TODO: implement getQuestionSetsFromFixtures
    throw UnimplementedError();
  }
  
}