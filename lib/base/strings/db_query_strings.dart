class AppQueryString {
  static const String tableAddresses = "addresses";
  static const String createDB =
      'CREATE TABLE addresses (id INTEGER PRIMARY KEY AUTOINCREMENT, country TEXT, state TEXT, city TEXT, pinCode TEXT)';
}