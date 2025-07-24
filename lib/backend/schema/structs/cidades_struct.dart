// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CidadesStruct extends BaseStruct {
  CidadesStruct({
    String? nome,
    int? id,
    String? uf,
  })  : _nome = nome,
        _id = id,
        _uf = uf;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;

  bool hasUf() => _uf != null;

  static CidadesStruct fromMap(Map<String, dynamic> data) => CidadesStruct(
        nome: data['nome'] as String?,
        id: castToType<int>(data['id']),
        uf: data['uf'] as String?,
      );

  static CidadesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CidadesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'id': _id,
        'uf': _uf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'uf': serializeParam(
          _uf,
          ParamType.String,
        ),
      }.withoutNulls;

  static CidadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CidadesStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        uf: deserializeParam(
          data['uf'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CidadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CidadesStruct &&
        nome == other.nome &&
        id == other.id &&
        uf == other.uf;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, id, uf]);
}

CidadesStruct createCidadesStruct({
  String? nome,
  int? id,
  String? uf,
}) =>
    CidadesStruct(
      nome: nome,
      id: id,
      uf: uf,
    );
