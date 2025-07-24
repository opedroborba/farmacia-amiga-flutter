// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosPacienteMedicoStruct extends BaseStruct {
  DadosPacienteMedicoStruct({
    String? identificador,
    String? nasc,
    int? codcidade,
    String? nomepaciente,
    String? emailpaciente,
  })  : _identificador = identificador,
        _nasc = nasc,
        _codcidade = codcidade,
        _nomepaciente = nomepaciente,
        _emailpaciente = emailpaciente;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  set identificador(String? val) => _identificador = val;

  bool hasIdentificador() => _identificador != null;

  // "nasc" field.
  String? _nasc;
  String get nasc => _nasc ?? '';
  set nasc(String? val) => _nasc = val;

  bool hasNasc() => _nasc != null;

  // "codcidade" field.
  int? _codcidade;
  int get codcidade => _codcidade ?? 0;
  set codcidade(int? val) => _codcidade = val;

  void incrementCodcidade(int amount) => codcidade = codcidade + amount;

  bool hasCodcidade() => _codcidade != null;

  // "nomepaciente" field.
  String? _nomepaciente;
  String get nomepaciente => _nomepaciente ?? '';
  set nomepaciente(String? val) => _nomepaciente = val;

  bool hasNomepaciente() => _nomepaciente != null;

  // "emailpaciente" field.
  String? _emailpaciente;
  String get emailpaciente => _emailpaciente ?? '';
  set emailpaciente(String? val) => _emailpaciente = val;

  bool hasEmailpaciente() => _emailpaciente != null;

  static DadosPacienteMedicoStruct fromMap(Map<String, dynamic> data) =>
      DadosPacienteMedicoStruct(
        identificador: data['identificador'] as String?,
        nasc: data['nasc'] as String?,
        codcidade: castToType<int>(data['codcidade']),
        nomepaciente: data['nomepaciente'] as String?,
        emailpaciente: data['emailpaciente'] as String?,
      );

  static DadosPacienteMedicoStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosPacienteMedicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identificador': _identificador,
        'nasc': _nasc,
        'codcidade': _codcidade,
        'nomepaciente': _nomepaciente,
        'emailpaciente': _emailpaciente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identificador': serializeParam(
          _identificador,
          ParamType.String,
        ),
        'nasc': serializeParam(
          _nasc,
          ParamType.String,
        ),
        'codcidade': serializeParam(
          _codcidade,
          ParamType.int,
        ),
        'nomepaciente': serializeParam(
          _nomepaciente,
          ParamType.String,
        ),
        'emailpaciente': serializeParam(
          _emailpaciente,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosPacienteMedicoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DadosPacienteMedicoStruct(
        identificador: deserializeParam(
          data['identificador'],
          ParamType.String,
          false,
        ),
        nasc: deserializeParam(
          data['nasc'],
          ParamType.String,
          false,
        ),
        codcidade: deserializeParam(
          data['codcidade'],
          ParamType.int,
          false,
        ),
        nomepaciente: deserializeParam(
          data['nomepaciente'],
          ParamType.String,
          false,
        ),
        emailpaciente: deserializeParam(
          data['emailpaciente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosPacienteMedicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosPacienteMedicoStruct &&
        identificador == other.identificador &&
        nasc == other.nasc &&
        codcidade == other.codcidade &&
        nomepaciente == other.nomepaciente &&
        emailpaciente == other.emailpaciente;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([identificador, nasc, codcidade, nomepaciente, emailpaciente]);
}

DadosPacienteMedicoStruct createDadosPacienteMedicoStruct({
  String? identificador,
  String? nasc,
  int? codcidade,
  String? nomepaciente,
  String? emailpaciente,
}) =>
    DadosPacienteMedicoStruct(
      identificador: identificador,
      nasc: nasc,
      codcidade: codcidade,
      nomepaciente: nomepaciente,
      emailpaciente: emailpaciente,
    );
