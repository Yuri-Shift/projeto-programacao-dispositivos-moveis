import 'dart:io';

import 'package:path/path.dart';
// precisa importar o path na linha acima
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tecsis/insumos/models/insumos.dart';

class InsumosServicos {
  //define um construtor interno para ser usado somente dentro
  //da classe ou nos seus conteúdos dependentes
  //(contendos bibliotecas, por exemplo)
  InsumosServicos.internal();
  //disponibiliza uma instância única (implementa o padrão singleton)
  static final InsumosServicos _instancia = InsumosServicos.internal();
  //fabrica/constrói a instância única
  factory InsumosServicos() => _instancia;
  //cria o objeto a partir da superclasse Database
  static Database? _dados;

  Future<Database> _iniciarDados() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'insumos.db');
    return await openDatabase(path, version: 1, onCreate: _criarDB);
  }

  Future<void> _criarDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE insumos(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT,
        descricao TEXT,
        estoqueMinimo INTEGER,
        categoria TEXT,
        unidadeMedida TEXT
      )
    ''');
  }

  // método para retornar a instância da base de dados
  Future<Database> get dados async {
    if (_dados != null) return _dados!;
    _dados = await _iniciarDados();
    return _dados!;
  }

  // método para inserir dados no bando de dados
  Future<int> inserirInsumo(Insumos insumo) async {
    Database db = await dados;
    return await db.insert(
      'insumos',
      insumo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //método para obter dados do sqlite
  Future<List<Insumos>> obterInsumos() async {
    Database db = await dados;
    List<Map<String, dynamic>> maps = await db.query('insumos');
    return List.generate(maps.length, (i) {
      return Insumos.fromMap(maps[i]);
    });
  }

  Future close() async {
    var db = await dados;
    db.close();
  }
}
