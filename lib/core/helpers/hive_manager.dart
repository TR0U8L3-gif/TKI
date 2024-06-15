import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';


class HiveManager {
  HiveManager({required String boxName}) : _boxName = boxName;

  final String _boxName;
  static Box? _boxInstance;

  Future<Box> get box async {
    return _boxInstance ??= await _openBox();
  }

  Future<Box> _openBox() => Hive.openBox(_boxName);

  void dispose() {
    _boxInstance?.close();
    _boxInstance = null;
  }

  Future<T?> read<T>(String key) async {
    final box = await this.box;
    return box.get(key) as T;
  }

  void write<T>(String key, T value) async {
    final box = await this.box;
    await box.put(key, value);
  }

  void delete(String key) async {
    final box = await this.box;
    await box.delete(key);
  }
}

@injectable
class QuestionSetsHiveManager extends HiveManager {
  QuestionSetsHiveManager() : super(boxName: 'QuestionSets');
}
