import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

const String hiveBoxName = 'tkiHiveStorage';

class HiveManager {
  HiveManager({required String boxName}) : _boxName = boxName {
    _openBox();
  }

  final String _boxName;
  static Box? _boxInstance;

  Future<Box> get box async {
    return _boxInstance ??= await Hive.openBox(hiveBoxName);
  }

  void _openBox() async {
    _boxInstance = await Hive.openBox(hiveBoxName);
  }

  void dispose() {
    _boxInstance?.close();
    _boxInstance = null;
  }

  Future<T?> read<T>(String key) async {
    final box = await isBoxOpen();
    return box.get(_boxName + key) as T?;
  }

  void write<T>(String key, T value) async {
    final box = await isBoxOpen();
    await box.put(_boxName + key, value);
  }

  void delete(String key) async {
    final box = await isBoxOpen();
    await box.delete(_boxName + key);
  }

  Future<Box> isBoxOpen() async {
    if (_boxInstance?.isOpen == true) {
      return _boxInstance!;
    } else {
      final box = await Hive.openBox(hiveBoxName);
      _boxInstance = box;
      return box;
    }
  }
}

@injectable
class QuestionSetsHiveManager extends HiveManager {
  QuestionSetsHiveManager() : super(boxName: 'QuestionSets');
}

@injectable
class AssessmentHistoryHiveManager extends HiveManager {
  AssessmentHistoryHiveManager() : super(boxName: 'AssessmentHistory');
}
