import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tki_app/core/helpers/fixture_reader.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

class MockFixtureReader extends Mock implements FixtureReader {
  @override
  String path = 'test/core/common/fixtures/';
}

void main() {
  final reader = FixtureReader();
  final mockFixtureReader = MockFixtureReader();

  late QuestionSetsLocalDataSourceImpl dataSource;

  setUp(() {
    dataSource =
        QuestionSetsLocalDataSourceImpl(fixtureReader: mockFixtureReader);
  });

  group('getQuestionSetsFromFixtures', () {
    const questionSetFileName = 'question_set_test.json';
    final questionSetJson =
        reader.fixture(mockFixtureReader.path + questionSetFileName);
    final questionSet = QuestionSet.fromJson(jsonDecode(questionSetJson));

    test('should return a list of question sets when the call is successful',
        () async {
      // Arrange
      when(() => mockFixtureReader.getFixturesPaths())
          .thenAnswer((_) async => [questionSetFileName]);
      when(() => mockFixtureReader.loadAsset(any()))
          .thenAnswer((_) async => questionSetJson);

      // Act
      final result = await dataSource.getQuestionSetsFromFixtures();

      // Assert
      expect(result, [questionSet]);
      verify(() => mockFixtureReader.getFixturesPaths());
      verify(() => mockFixtureReader.loadAsset(questionSetFileName));
    });

    test('should throw a CacheException when an error occurs', () async {
      // Arrange
      when(() => mockFixtureReader.getFixturesPaths())
          .thenThrow(const CacheException(
        message: 'Cache error',
        statusCode: 404,
      ));

      // Act
      final call = dataSource.getQuestionSetsFromFixtures;

      // Assert
      expect(call(), throwsA(isInstanceOf<CacheException>()));
      verify(() => mockFixtureReader.getFixturesPaths());
    });

    test('should throw an UnknownFailure when an unknown error occurs',
        () async {
      // Arrange
      when(() => mockFixtureReader.getFixturesPaths())
          .thenThrow(Exception('Unknown error'));

      // Act
      final call = dataSource.getQuestionSetsFromFixtures;

      // Assert
      expect(call(), throwsA(isInstanceOf<UnknownFailure>()));
      verify(() => mockFixtureReader.getFixturesPaths());
    });
  });
}
