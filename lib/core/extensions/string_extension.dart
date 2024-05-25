extension StringExtension on String {
  /// Returns true if the string is a valid url
  bool get isUrl => Uri.tryParse(this)?.hasAbsolutePath  ?? false;
  
  /// Replaces all new lines with a space
  String get replaceNewLines => replaceAll('\n', ' ');

  /// Shortens the string to the given length
  String short([int length = 22]) {
    if(this.length <= length) return this;
    return '${substring(0, length)}...';
  }

}