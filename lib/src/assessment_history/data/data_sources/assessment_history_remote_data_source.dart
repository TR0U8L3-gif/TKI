import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tki_app/core/helpers/hive_manager.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';

const assessmentHistoryHiveKey = 'assessmentHistoryKey';

abstract class AssessmentHistoryRemoteDataSource {
  Future<bool> deleteAssessmentHistory(
    int index,
    AssessmentHistory assessmentHistory,
  );

  Future<List<AssessmentHistory>> getAssessmentHistoryList();
}

@LazySingleton(as: AssessmentHistoryRemoteDataSource)
class AssessmentHistoryRemoteDataSourceImpl
    implements AssessmentHistoryRemoteDataSource {
  AssessmentHistoryRemoteDataSourceImpl({required this.hive});

  final AssessmentHistoryHiveManager hive;

  @override
  Future<bool> deleteAssessmentHistory(
    int index,
    AssessmentHistory assessmentHistory,
  ) async {
    try {
      final assessmentHistories =
          await hive.read<List<String>?>(assessmentHistoryHiveKey) ?? [];

      final assessmentHistoryJsonString = json.encode(assessmentHistory.toJson());

      if (assessmentHistories.length <= index) {
        throw CacheException(
            message: 'Index out of bound',
            description:
                'You are trying to access the $index element where there are only ${assessmentHistories.length} available',
            statusCode: 400);
      }

      final predictedAssessmentHistory = assessmentHistories.elementAt(index);
      if (predictedAssessmentHistory != assessmentHistoryJsonString) {
        throw const CacheException(
          message: 'Failed to delete Assessment History',
          description:
              'The assessment history you are trying to delete does not match the one in the memory',
          statusCode: 404,
        );
      } else {
        assessmentHistories.removeAt(index);
      }

      hive.write<List<String>>(
        assessmentHistoryHiveKey,
        List.from(<String>[...assessmentHistories]),
      );

      return true;
    } on CacheException catch (e) {
      throw CacheException(
          message: 'Failed to delete Assessment History',
          description: e.message,
          statusCode: e.statusCode);
    } catch (e) {
      throw UnknownException(
          message: 'Failed to delete Assessment History',
          description: e.toString(),
          statusCode: 500);
    }
  }

  @override
  Future<List<AssessmentHistory>> getAssessmentHistoryList() async {
    try {
      final assessmentHistoriesStrings =
          await hive.read<List<String>?>(assessmentHistoryHiveKey);
      if (assessmentHistoriesStrings == null ||
          assessmentHistoriesStrings.isEmpty) {
        return [];
      }
      final result = <AssessmentHistory>[];
      for (final assessmentHistoryJson in assessmentHistoriesStrings) {
        final assessmentHistory =
            AssessmentHistory.fromJson(json.decode(assessmentHistoryJson));
        result.add(assessmentHistory);
      }
      return result;
    } on CacheException catch (e) {
      throw CacheException(
          message: 'Failed to get Assessment Histories from Memory',
          description: e.message,
          statusCode: e.statusCode);
    } catch (e) {
      throw UnknownException(
        message: 'Failed to get Assessment Histories from Memory',
        description: e.toString(),
        statusCode: 500,
      );
    }
  }
}
