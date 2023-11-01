import 'dart:async';

import 'package:path/path.dart';
import 'package:sg_grocery_project/base/strings/db_query_strings.dart';
import 'package:sg_grocery_project/model/address.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static final DBHelper instance = DBHelper._private();
  static Database? _database;

  DBHelper._private();

  Future<Database> get db async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, "address.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // tao database
  FutureOr<void> _onCreate(Database db, int version) {
    final createDB = db.execute(
      "CREATE TABLE addresses (id INTEGER PRIMARY KEY AUTOINCREMENT, country TEXT, state TEXT, city TEXT, pinCode TEXT"
    );
    return createDB;
  }

  Future<List<Address>> loadAddress() async {
    final database = await db;
    final data = await database.rawQuery("SELECT * FROM addresses");
    return List.generate(
      data.length,
      (index) => Address(
        country: data[index]["country"].toString(),
        state: data[index]["state"].toString(),
        city: data[index]["city"].toString(),
        pinCode: data[index]["pinCode"].toString(),
      ),
    );
  }

  FutureOr<bool> addAddress(Address address) async {
    try {
      final database = await db;
      await database
          .rawInsert("INSERT INTO addresses(country, state, city, pinCode) VALUES(${address.country}, ${address.state}, ${address.city}, ${address.pinCode})");
      return true;
    } catch (e) {
      return false;
    }
  }

  FutureOr<bool> updateAddress(int id, Address address) async {
    try {
      final database = await db;
      final data = await database.rawUpdate(
        "UPDATE addresses SET country='${address.country}', state ='${address.state}', city='${address.city}', pinCode='${address.pinCode}' WHERE id=$id",
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  FutureOr<bool> deleteAddress(int id) async {
    try {
      final database = await db;
      final data = await database.rawDelete(
        "DELETE FROM addresses WHERE id=$id",
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
