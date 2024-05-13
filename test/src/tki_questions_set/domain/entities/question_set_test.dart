import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  group('QuestionSet', () {
    const language = 'pl';
    const title = 'Kwestionariusz Thomasa-Kilmanna';
    const imageUrl = 'null';
    final questions = [
      Question(
        firstType: 'd',
        secondType: 'e',
        firstQuestion: 'Jestem zazwyczaj stanowczy w realizacji własnych celów',
        secondQuestion:
            'Próbuje z każdą sprawą wychodzić na zewnątrz i stawiać sprawy otwarcie',
      ),
      Question(
        firstType: 'e',
        secondType: 'd',
        firstQuestion:
            'Wykładam zawsze swoje karty na stół i zachęcam drugą stronę do uczynienia tego samego',
        secondQuestion:
            "Gdy powstaje konflikt zawsze próbuje wygrać swój interes",
      ),
    ];

    final questionSetJson = FixtureReader.fixture('question_set_test.json');

    final questionSet = QuestionSet(
      language: language,
      title: title,
      imageUrl: imageUrl,
      questions: questions,
    );

    test('should create a valid QuestionSet instance', () {
      // Assert
      expect(questionSet.language, equals(language));
      expect(questionSet.title, equals(title));
      expect(questionSet.imageUrl, equals(imageUrl));
      expect(questionSet.questions, equals(questions));
      expect(questionSet, isA<QuestionSet>());
    });

    test('should create a QuestionSet from JSON', () {
      // Act
      final fromJson = QuestionSet.fromJson(json.decode(questionSetJson));

      // Assert
      expect(fromJson, equals(questionSet));
    });
  });
}
