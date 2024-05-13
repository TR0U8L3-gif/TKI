import 'dart:io';
import 'dart:convert';

class FixtureReader {

  /// Read a fixture file and parse it as a JSON object.
  static dynamic readFixture(String name) {
    String fixtureData = fixture(name);
    return jsonDecode(fixtureData);
  }
  
  /// Read a fixture file as a string.
  static String fixture(String name) => File('lib/core/common/fixtures/$name').readAsStringSync();
}
