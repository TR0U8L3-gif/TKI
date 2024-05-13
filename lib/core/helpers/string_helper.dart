class StringHelper {
  static String capitalize(String s) {
    return s[0].toUpperCase() + s.substring(1);
  }

  static bool isUrl(String s) {
    Uri? uri = Uri.tryParse(s);
    return uri != null && uri.hasScheme && uri.hasAuthority;
  }
}
