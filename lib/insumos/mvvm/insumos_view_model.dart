import 'package:flutter/material.dart';
import 'package:tecsis/insumos/models/insumos.dart';
import 'package:tecsis/insumos/servicos/insumos_servicos.dart';

class InsumosViewModel extends ChangeNotifier {
  //criando a instância do serviço (insumos)
  //método construtor da classe
  InsumosServicos _insumosServicos = InsumosServicos();

  //variável utilizando para armazenar a lista de dados vindo do banco de dados
  List<Insumos> _insumos = [];

  //método construtor da classe
  InsumosViewModel() {
    _obterInsumos();
  }

  //método para integrar com o método da classe InsumosServicos
  Future<bool> inserirInsumo(Insumos insumo) async {
    try {
      await _insumosServicos.inserirInsumo(insumo);
      _obterInsumos();
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  //método que estará disponível externamente
  List<Insumos> get insumos => _insumos;

  Future<void> _obterInsumos() async {
    _insumos = await _insumosServicos.obterInsumos();
    notifyListeners();
  }
}
