import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FixtureReader {
  /// Read a fixture file and parse it as a JSON object.
  dynamic readFixture(String path) {
    String fixtureData = fixture(path);
    return jsonDecode(fixtureData);
  }

  /// Read a fixture file from assets and parse it as a JSON object.
  Future<String> loadAsset(String path) async {
  return await rootBundle.loadString(path);
}

  /// Read a fixture file as a string.
  String fixture(String path) => File(path).readAsStringSync();

  String get path => 'assets/fixtures/';

  /// Get a list of fixture file names.
  /// example result: assets/fixtures/question_set_fixture.json
  Future<List<String>> getFixturesPaths() async {
    final AssetManifest assetManifest =
        await AssetManifest.loadFromAssetBundle(rootBundle);
    final List<String> assets = assetManifest.listAssets();
    final result = <String>[];
    for (var asset in assets) {
      if (asset.contains(path)) {
        result.add(asset);
      }
    }

    return result;
  }
}
