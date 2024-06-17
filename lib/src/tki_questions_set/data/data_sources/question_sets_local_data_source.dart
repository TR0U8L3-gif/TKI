import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/helpers/fixture_reader.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

abstract class QuestionSetsLocalDataSource {
  Future<List<QuestionSet>> getQuestionSetsFromFixtures();

  Future<QuestionSet> getQuestionSetFromFile();
}

@LazySingleton(as: QuestionSetsLocalDataSource)
class QuestionSetsLocalDataSourceImpl implements QuestionSetsLocalDataSource {
  QuestionSetsLocalDataSourceImpl({required this.fixtureReader});

  final FixtureReader fixtureReader;

  @override
  Future<List<QuestionSet>> getQuestionSetsFromFixtures() async {
    try {
      final questionSetsPaths = await fixtureReader.getFixturesPaths();
      final result = <QuestionSet>[];
      for (final path in questionSetsPaths) {
        final questionSetJson = await fixtureReader.loadAsset(path);
        final questionSet = QuestionSet.fromJson(json.decode(questionSetJson));
        result.add(questionSet);
      }
      return result;
    } on CacheException catch (e) {
      throw CacheException(
        message: 'Failed to load Question Sets from fixtures',
        description: e.message,
        statusCode: e.statusCode,
      );
    } catch (e) {
      throw UnknownException(
        message: 'Failed to load Question Sets from fixtures',
        description: e.toString(),
        statusCode: 500,
      );
    }
  }

  @override
  Future<QuestionSet> getQuestionSetFromFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      try {
        File file = File(result.files.single.path!);
        final questionSetJson = await file.readAsString();
        final object = json.decode(questionSetJson);
        final questionSet = QuestionSet.fromJson(object);
        return questionSet;
      } on FormatException {
        throw const CacheException(
          message: 'Selected file is in wrong format',
          description:
              'Cannot convert a file into a QuestionSet object. Please check the validity of the file. The file should be in .json format and have the following parameters: “language”, “title”, “imageUrl”, “questions”. \nOn the other hand, each question should have the following parameters: “firstType” , “firstQuestion” , “secondType”, “secondQuestion”.',
          statusCode: 300,
        );
      } on FileSystemException catch (e) {
        throw CacheException(
          message: 'Failed to load Question Set from File',
          description: e.message,
          statusCode: 400,
        );
      } catch (e) {
        throw UnknownException(
          message: 'Failed to load Question Set from File',
          description: e.toString(),
          statusCode: 500,
        );
      }
    } else {
      throw const CacheException(
        message: 'No file selected',
        description: 'Please select a file to load a Question Set',
        statusCode: 100,
      );
    }
  }
}
