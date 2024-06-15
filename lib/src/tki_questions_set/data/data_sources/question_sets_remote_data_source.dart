import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/helpers/hive_manager.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

const questionSetHiveKey = 'questionSetsKey';

abstract class QuestionSetsRemoteDataSource {
  Future<List<QuestionSet>> getQuestionSetsFromMemory();
  Future<bool> saveQuestionSet(QuestionSet questionSet);
}

@LazySingleton(as: QuestionSetsRemoteDataSource)
class QuestionSetsRemoteDataSourceImpl implements QuestionSetsRemoteDataSource {
  QuestionSetsRemoteDataSourceImpl({required this.hive});

  final QuestionSetsHiveManager hive;

  @override
  Future<List<QuestionSet>> getQuestionSetsFromMemory() async {
    try {
      final questionSetsStrings = await hive.read<List<String>?>(questionSetHiveKey);
      if(questionSetsStrings == null || questionSetsStrings.isEmpty) {
        return [];
      }
      final result = <QuestionSet>[];
      for (final questionSetJson in questionSetsStrings) {
        final questionSet = QuestionSet.fromJson(json.decode(questionSetJson));
        result.add(questionSet);
      }
      return result;
    } on CacheException catch (e) {
      throw CacheException(message: e.message, statusCode: e.statusCode);
    } catch (e) {
      rethrow;
    }
  }

  
  @override
  Future<bool> saveQuestionSet(QuestionSet questionSet) async {
    try {
      final questionSets = await hive.read<List<String>?>(questionSetHiveKey) ?? [];
      hive.write<List<String>>(
          questionSetHiveKey, List.from(<String>[...questionSets, json.encode(questionSet.toJson())]));
      return true;
    } on CacheException catch (e) {
      throw CacheException(message: e.message, statusCode: e.statusCode);
    } catch (e) {
      rethrow;
    }
  }
}
