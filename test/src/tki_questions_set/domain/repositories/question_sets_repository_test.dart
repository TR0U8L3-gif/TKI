import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/src/tki_questions_set/data/data_sources/question_sets_local_data_source.dart';
import 'package:tki_app/src/tki_questions_set/data/repositories/question_sets_repository_impl.dart';

class MockQuestionSetsLocalDataSource extends Mock implements QuestionSetsLocalDataSource {}

void main() {
  late QuestionSetsLocalDataSource mockLocalDataSource;
  late QuestionSetsRepositoryImpl repository;

  setUp(() {
    mockLocalDataSource = MockQuestionSetsLocalDataSource();
    repository = QuestionSetsRepositoryImpl(localDataSource: mockLocalDataSource);
  });

  group('getQuestionSetsFromFixtures', () {
    test('should return a list of QuestionSet from the local data source', () async {
      // arrange
      when(() => mockLocalDataSource.getQuestionSetsFromFixtures())
          .thenAnswer((_) async => []);
      // act
      final result = await repository.getQuestionSetsFromFixtures();
      // assert
      expect(result.isRight(), true);
      expect(result.fold((l) => l, (r) => r), isA<List>());
      verify(() => mockLocalDataSource.getQuestionSetsFromFixtures());
    });

    test('should return a CacheException when the call to the local data source is unsuccessful', () async {
      // arrange
      when(() => mockLocalDataSource.getQuestionSetsFromFixtures())
          .thenThrow(const CacheException(message: 'CacheException', statusCode: 404));
      // act
      final result = await repository.getQuestionSetsFromFixtures();
      // assert
      expect(result.isLeft(), true);
      expect(result.fold((l) => l, (r) => r), isA<CacheFailure>());
      verify(() => mockLocalDataSource.getQuestionSetsFromFixtures());
    });
  });
}