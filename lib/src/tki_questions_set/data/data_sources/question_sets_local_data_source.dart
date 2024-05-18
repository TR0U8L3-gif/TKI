import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tki_app/core/helpers/fixture_reader.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

abstract class QuestionSetsLocalDataSource {
  Future<List<QuestionSet>> getQuestionSetsFromFixtures();
}

@LazySingleton(as: QuestionSetsLocalDataSource)
class QuestionSetsLocalDataSourceImpl implements QuestionSetsLocalDataSource {
  QuestionSetsLocalDataSourceImpl({required this.fixtureReader});

  final FixtureReader fixtureReader;

  @override
  Future<List<QuestionSet>> getQuestionSetsFromFixtures() async {
    try {
      final questionSetsPaths =
          await fixtureReader.getFixturesPaths();
          final result = <QuestionSet>[];
          for (final path in questionSetsPaths) {
            final questionSetJson = await fixtureReader.loadAsset(path);
            final questionSet = QuestionSet.fromJson(json.decode(questionSetJson));
            result.add(questionSet);
          }
          return result;
    } on CacheException catch (e) {
      throw CacheException(message: e.message, statusCode: e.statusCode);
    } catch (e) {
      throw UnknownFailure(message: e.toString(), statusCode: 404);
    }
  }
}
