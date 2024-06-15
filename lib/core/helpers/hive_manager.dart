import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

class HiveManager {
  HiveManager({required String boxName}) : _boxName = boxName {
    _openBox();
  }

  final String _boxName;
  static Box? _boxInstance;

  Future<Box> get box async {
    return _boxInstance ??= await Hive.openBox(_boxName);
  }

  void _openBox() async {
    _boxInstance = await Hive.openBox(_boxName);
  }

  void dispose() {
    _boxInstance?.close();
    _boxInstance = null;
  }

  Future<T?> read<T>(String key) async {
    final box = await isBoxOpen();
    return box.get(key) as T;
  }

  void write<T>(String key, T value) async {
    final box = await isBoxOpen();
    await box.put(key, value);
  }

  void delete(String key) async {
    final box = await isBoxOpen();
    await box.delete(key);
  }

  Future<Box> isBoxOpen() async {
    if (_boxInstance?.isOpen == true) {
      return _boxInstance!;
    } else {
      final box = await Hive.openBox(_boxName);
      _boxInstance = box;
      return box;
    }
  }
}

@injectable
class QuestionSetsHiveManager extends HiveManager {
  QuestionSetsHiveManager() : super(boxName: 'QuestionSets');
}
