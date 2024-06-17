import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tki_app/core/helpers/hive_manager.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

const questionSetHiveKey = 'questionSetsKey';

abstract class QuestionSetsRemoteDataSource {
  Future<List<QuestionSet>> getQuestionSetsFromMemory();

  Future<bool> saveQuestionSet(QuestionSet questionSet);

  Future<bool> deleteQuestionSet(int index, QuestionSet questionSet);
}

@LazySingleton(as: QuestionSetsRemoteDataSource)
class QuestionSetsRemoteDataSourceImpl implements QuestionSetsRemoteDataSource {
  QuestionSetsRemoteDataSourceImpl({required this.hive});

  final QuestionSetsHiveManager hive;

  @override
  Future<List<QuestionSet>> getQuestionSetsFromMemory() async {
    try {
      final questionSetsStrings =
          await hive.read<List<String>?>(questionSetHiveKey);
      if (questionSetsStrings == null || questionSetsStrings.isEmpty) {
        return [];
      }
      final result = <QuestionSet>[];
      for (final questionSetJson in questionSetsStrings) {
        final questionSet = QuestionSet.fromJson(json.decode(questionSetJson));
        result.add(questionSet);
      }
      return result;
    } on CacheException catch (e) {
      throw CacheException(
          message: 'Failed to get Question Set from Memory',
          description: e.message,
          statusCode: e.statusCode);
    } catch (e) {
      throw UnknownException(
        message: 'Failed to get Question Set from Memory',
        description: e.toString(),
        statusCode: 500,
      );
    }
  }

  @override
  Future<bool> saveQuestionSet(QuestionSet questionSet) async {
    try {
      final questionSets =
          await hive.read<List<String>?>(questionSetHiveKey) ?? [];
      hive.write<List<String>>(
          questionSetHiveKey,
          List.from(
              <String>[...questionSets, json.encode(questionSet.toJson())]));
      return true;
    } on CacheException catch (e) {
      throw CacheException(
        message: 'Failed to save Question Set',
        description: e.message,
        statusCode: e.statusCode,
      );
    } catch (e) {
      throw UnknownException(
        message: 'Failed to save Question Set',
        description: e.toString(),
        statusCode: 500,
      );
    }
  }

  @override
  Future<bool> deleteQuestionSet(int index, QuestionSet questionSet) async {
    try {
      final questionSets =
          await hive.read<List<String>?>(questionSetHiveKey) ?? [];

      final questionSetJsonString = json.encode(questionSet.toJson());

      if (questionSets.length <= index) {
        throw CacheException(
            message: 'Index out of bound',
            description:
                'You are trying to access the $index element where there are only ${questionSets.length} available',
            statusCode: 400);
      }

      final predictedQuestionSet = questionSets.elementAt(index);
      if (predictedQuestionSet != questionSetJsonString) {
        throw const CacheException(
          message: 'Failed to delete Question Set',
          description:
              'The question set you are trying to delete does not match the one in the memory',
          statusCode: 404,
        );
      } else {
        questionSets.removeAt(index);
      }

      hive.write<List<String>>(
          questionSetHiveKey, List.from(<String>[...questionSets]));

      return true;
    } on CacheException catch (e) {
      throw CacheException(
          message: 'Failed to delete Question Set',
          description: e.message,
          statusCode: e.statusCode);
    } catch (e) {
      throw UnknownException(
          message: 'Failed to delete Question Set',
          description: e.toString(),
          statusCode: 500);
    }
  }
}
