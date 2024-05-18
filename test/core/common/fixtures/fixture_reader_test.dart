import 'package:flutter_test/flutter_test.dart';
import 'package:tki_app/core/helpers/fixture_reader.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final reader = FixtureReader();

  group('FixtureReader', () {
    test('getFixturesFileNames should return a list of fixture file names',
        () async {
      // Arrange
      final expectedFileNames = [
        'assets/fixtures/question_set_fixture.json',
      ];
      // Act
      final result = await reader.getFixturesPaths();
      // Assert
      expect(result, equals(expectedFileNames));
    });
  });
}
