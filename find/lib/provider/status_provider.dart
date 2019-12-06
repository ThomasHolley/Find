import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class StatusProvider{
  static Database db;

  static Future open() async{
    
    db = await openDatabase(join(await getDatabasesPath(), 'status.db'),
    version: 1,
    onCreate: (Database db, int version) async {
      db.execute('''
      create table Status(
        id integer primary key autoincrement,
        text text not null
        );
      ''');
    }
    );
  }


  static Future<List<Map<String, dynamic>>> getStatusList() async{
    if( db == null){
      await open();
    }
    return await db.query('Status');
  }

  static Future insertStatus(Map<String, dynamic> status) async{
    await db.insert('Status', status);
  }
  
}