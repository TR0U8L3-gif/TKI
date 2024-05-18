import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/repositories/question_sets_repository.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart';

class MockQuestionSetsRepository extends Mock implements QuestionSetsRepository {}

void main() {

  late QuestionSetsRepository questionSetsRepositoryMock;
  late GetQuestionSetsFromFixtures useCase;

  setUp(() {
    questionSetsRepositoryMock = MockQuestionSetsRepository();
    useCase = GetQuestionSetsFromFixtures(questionSetsRepositoryMock);
  });

  group('GetQuestionSetsFromFixtures', () {
    test('should return question sets from fixtures', () async {
      // Arrange
      when(() => questionSetsRepositoryMock.getQuestionSetsFromFixtures()).thenAnswer((_) async => const Right([]));

      // Act
      final result = await useCase(NoParams());

      // Assert
      expect(result, const Right<Failure, List<QuestionSet>>([]));
      verify(() => questionSetsRepositoryMock.getQuestionSetsFromFixtures()).called(1);
    });

    const failure = CacheFailure(message: "message", statusCode: "statusCode");
    
    test('should return failure from fixtures', () async {
      // Arrange
      when(() => questionSetsRepositoryMock.getQuestionSetsFromFixtures()).thenAnswer((_) async => const Left(failure));

      // Act
      final result = await useCase(NoParams());

      // Assert
      expect(result, const Left<Failure, List<QuestionSet>>(failure));
      verify(() => questionSetsRepositoryMock.getQuestionSetsFromFixtures()).called(1);
    });
  });
}