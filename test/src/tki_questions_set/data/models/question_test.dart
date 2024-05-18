import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tki_app/core/helpers/fixture_reader.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question.dart';

void main() {
  group('Question', () {
    const firstType = 'd';
    const secondType = 'e';
    const firstQuestion = 'Jestem zazwyczaj stanowczy w realizacji własnych celów';
    const secondQuestion = 'Próbuje z każdą sprawą wychodzić na zewnątrz i stawiać sprawy otwarcie';
    const path = 'test/core/common/fixtures/';
    
    final reader = FixtureReader();
    final question = Question(
      firstType: firstType,
      secondType: secondType,
      firstQuestion: firstQuestion,
      secondQuestion: secondQuestion,
    );

    final questionString = reader.fixture('${path}question_test.json');

    test('should create a valid Question instance', () {
      // Assert
      expect(question.firstType, equals(firstType));
      expect(question.firstQuestion, equals(firstQuestion));
      expect(question.secondType, equals(secondType));
      expect(question.secondQuestion, equals(secondQuestion));
      expect(question, isA<Question>());
    });

    test('should create a QuestionSet from JSON', () {
      // Act
      final fromJson = Question.fromJson(json.decode(questionString));

      // Assert
      expect(fromJson, equals(question));
    });
  });
}
