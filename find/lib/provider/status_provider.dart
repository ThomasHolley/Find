import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class StatusProvider{
  static Database db;  //instanciation de la base 

  static Future open() async{
    
    db = await openDatabase(join(await getDatabasesPath(), 'status.db'),
    version: 1,
    onCreate: (Database db, int version) async {   //Creation de la base
      db.execute('''
      create table Status(
        id integer primary key autoincrement,         
        text text not null
        );
      ''');//Creation de la Table et de ses attributs
    }
    );
  }


  static Future<List<Map<String, dynamic>>> getStatusList() async{
    if( db == null){
      await open();
    }                                                       //Affichage des éléments de la base
    return await db.query('Status');
  }

  static Future insertStatus(Map<String, dynamic> status) async{
    await db.insert('Status', status);    //Insertion du text dans la base
  }
  
}


