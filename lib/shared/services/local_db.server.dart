import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDBService {
  static const _databaseName = "cachair_database.db";
  static const _databseVersion = 1;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    final path =
        "${(await getApplicationDocumentsDirectory()).path}/cachiar/$_databaseName";
    _database = await openDatabase(
      path,
      version: _databseVersion,
      onCreate: (db, version) {
        db.execute("""
        create table Products (
          id integer not null,
          barcode text,
          data text
        )
      """);
      },
    );

    return _database!;
  }

  Future<void> trancateTable({required String tableName}) async {
    final db = await database;

    await db.delete(tableName);
  }

  Future<void> insertMany({
    required String tableName,
    required List<Map<String, dynamic>> data,
  }) async {
    final db = await database;

    for (var i = 0; i < data.length; i++) {
      await db.insert(tableName, data[i]);
    }
  }

  Future<List<Map<String, dynamic>>> selectAll(
      {required String tableName}) async {
    final db = await database;

    return await db.query(tableName);
  }

  Future<Map<String, dynamic>?> selectOne({
    required String tableName,
    required String where,
  }) async {
    final db = await database;

    final data = await db.query(tableName, where: where);

    return data.isEmpty ? data.first : null;
  }
}
