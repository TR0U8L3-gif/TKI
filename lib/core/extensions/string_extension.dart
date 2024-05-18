extension StringExtension on String {
  bool get isUrl => Uri.tryParse(this)?.hasAbsolutePath  ?? false;
}