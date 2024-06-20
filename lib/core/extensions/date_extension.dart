import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  /// Returns the date in the format yyyy-MM-dd
  String get ddMMyyyy => DateFormat('dd.MM.yyyy').format(this);
}