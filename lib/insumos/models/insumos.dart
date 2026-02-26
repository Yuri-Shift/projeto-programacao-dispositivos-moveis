// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Insumos {
  //Variáveis de instância
  int? id;
  String? nome;
  String? descricao;
  int? estoqueMinimo;

  String? categoria;

  String? unidadeMedida;

  Insumos({
    this.id,
    this.nome,
    this.descricao,
    this.estoqueMinimo,
    this.categoria,
    this.unidadeMedida,
  });

  Insumos copyWith({
    int? id,
    String? nome,
    String? descricao,
    int? estoqueMinimo,
    String? categoria,
    String? unidadeMedida,
  }) {
    return Insumos(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      estoqueMinimo: estoqueMinimo ?? this.estoqueMinimo,
      categoria: categoria ?? this.categoria,
      unidadeMedida: unidadeMedida ?? this.unidadeMedida,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'estoqueMinimo': estoqueMinimo,
      'categoria': categoria,
      'unidadeMedida': unidadeMedida,
    };
  }

  factory Insumos.fromMap(Map<String, dynamic> map) {
    return Insumos(
      id: map['id'] != null ? map['id'] as int : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      descricao: map['descricao'] != null ? map['descricao'] as String : null,
      estoqueMinimo: map['estoqueMinimo'] != null
          ? map['estoqueMinimo'] as int
          : null,
      categoria: map['categoria'] != null ? map['categoria'] as String : null,
      unidadeMedida: map['unidadeMedida'] != null
          ? map['unidadeMedida'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Insumos.fromJson(String source) =>
      Insumos.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Insumos(id: $id, nome: $nome, descricao: $descricao, estoqueMinimo: $estoqueMinimo, categoria: $categoria, unidadeMedida: $unidadeMedida)';
  }

  @override
  bool operator ==(covariant Insumos other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.descricao == descricao &&
        other.estoqueMinimo == estoqueMinimo &&
        other.categoria == categoria &&
        other.unidadeMedida == unidadeMedida;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        descricao.hashCode ^
        estoqueMinimo.hashCode ^
        categoria.hashCode ^
        unidadeMedida.hashCode;
  }
}
