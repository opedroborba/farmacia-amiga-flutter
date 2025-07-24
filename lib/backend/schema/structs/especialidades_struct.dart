// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EspecialidadesStruct extends BaseStruct {
  EspecialidadesStruct({
    String? especialidade,
    String? grupo,
    int? id,
  })  : _especialidade = especialidade,
        _grupo = grupo,
        _id = id;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  set especialidade(String? val) => _especialidade = val;

  bool hasEspecialidade() => _especialidade != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;

  bool hasGrupo() => _grupo != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static EspecialidadesStruct fromMap(Map<String, dynamic> data) =>
      EspecialidadesStruct(
        especialidade: data['especialidade'] as String?,
        grupo: data['grupo'] as String?,
        id: castToType<int>(data['id']),
      );

  static EspecialidadesStruct? maybeFromMap(dynamic data) => data is Map
      ? EspecialidadesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'especialidade': _especialidade,
        'grupo': _grupo,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'especialidade': serializeParam(
          _especialidade,
          ParamType.String,
        ),
        'grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static EspecialidadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      EspecialidadesStruct(
        especialidade: deserializeParam(
          data['especialidade'],
          ParamType.String,
          false,
        ),
        grupo: deserializeParam(
          data['grupo'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'EspecialidadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EspecialidadesStruct &&
        especialidade == other.especialidade &&
        grupo == other.grupo &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([especialidade, grupo, id]);
}

EspecialidadesStruct createEspecialidadesStruct({
  String? especialidade,
  String? grupo,
  int? id,
}) =>
    EspecialidadesStruct(
      especialidade: especialidade,
      grupo: grupo,
      id: id,
    );
