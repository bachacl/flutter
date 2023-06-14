import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> openDb() async {
  final databasePath = await getDatabasesPath();
  final path = join(databasePath, 'my_database.db');

  return await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db
          .execute('CREATE TABLE my_table (id INTEGER PRIMARY KEY, name TEXT)');
    },
  );
}

void insertData() async {
  final database = await openDb();
  await database.insert(
    'my_table',
    {'name': 'John Doe'},
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

void fetchData() async {
  final database = await openDb();
  final results = await database.query('my_table');

  for (var result in results) {
    print(result['name']);
  }
}

void closeDb(Database database) async {
  await database.close();
}

void executeRawQuery() async {
  final database = await openDb();
  await database.execute('INSERT INTO my_table (name) VALUES ("John Doe")');
}

void fetchRawQueryResults() async {
  final database = await openDb();
  final results = await database.rawQuery('SELECT * FROM my_table');

  for (var result in results) {
    print(result['name']);
  }
}
