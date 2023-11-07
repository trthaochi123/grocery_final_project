class DatabaseStrings {
  static const String databaseName = 'address.db';
  static const String tableName = 'addressTable';
  static const String createDB =
      'CREATE TABLE addressTable (id INTEGER PRIMARY KEY AUTOINCREMENT, country TEXT, state TEXT, city TEXT, pincode TEXT, type TEXT, isCheck INTEGER DEFAULT 0)';
}