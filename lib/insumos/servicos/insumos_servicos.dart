import 'dart:io';

import 'package';
// precisa importar o path na linha acima
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class InsumosServicos {
  static Database? _dados;

  Future<Database> _iniciarDados() async {
    Directory directory = await getApplicationDocumentsDirectory(
      String path = joindirectory.path, 'insumos.db' );
      return await openDatabase(path, version: 1, onCreate: _criarDB);
  }

  Future<void> _criarDB(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE insumos(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT,
        descricao TEXT,
        estoqueMinimo INTEGER,
        categoria TEXT,
        unidadeMedida TEXT
      )
    '''
  );
}

}
