import 'dart:async';

import 'package:path/path.dart';
import 'package:sg_grocery_project/base/strings/db_query_strings.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static final DBHelper instance = DBHelper._private();
  static Database? _database;
  DBHelper._private();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();


    return _database!;
  }

  Future<Database> initDatabase()  async{
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, AppQueryString.databaseName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }


  FutureOr<void> _onCreate(Database db, int version) async {
    final createDB = db.execute(AppQueryString.createDB);
    // khi khoi tao se thuc hien them DB INSERT DATA
    await db.transaction( (txn) async {
      await txn.rawInsert('INSERT INTO carts (name, weight, price) VALUES ("APPLE CHART", "3kg", "\$3")');
      await txn.rawInsert('INSERT INTO carts (name, weight, price) VALUES ("DRIED MANGO", "4kg", "\$1")');
      await txn.rawInsert('INSERT INTO carts (name, weight, price) VALUES ("BROWNIE", "3kg", "\$3")');
      await txn.rawInsert('INSERT INTO carts (name, weight, price) VALUES ("ORANGE JUICE", "1ltr", "\$8")');
    });
    return createDB;
  }
}

