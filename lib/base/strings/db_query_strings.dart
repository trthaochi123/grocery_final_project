class AppQueryString {
  static const String databaseName = "fruitApp.db";
  static const String tableCarts = "carts";
  static const String createDB =
      'CREATE TABLE carts (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, weight TEXT, price TEXT)';
}