// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosMedicoStruct extends BaseStruct {
  DadosMedicoStruct({
    int? idmed,
    String? registro,
    String? especial,
    String? nomemedico,
    String? numeroregistro,
    int? idcidade,
    String? uuidmed,
  })  : _idmed = idmed,
        _registro = registro,
        _especial = especial,
        _nomemedico = nomemedico,
        _numeroregistro = numeroregistro,
        _idcidade = idcidade,
        _uuidmed = uuidmed;

  // "idmed" field.
  int? _idmed;
  int get idmed => _idmed ?? 0;
  set idmed(int? val) => _idmed = val;

  void incrementIdmed(int amount) => idmed = idmed + amount;

  bool hasIdmed() => _idmed != null;

  // "registro" field.
  String? _registro;
  String get registro => _registro ?? '';
  set registro(String? val) => _registro = val;

  bool hasRegistro() => _registro != null;

  // "especial" field.
  String? _especial;
  String get especial => _especial ?? '';
  set especial(String? val) => _especial = val;

  bool hasEspecial() => _especial != null;

  // "nomemedico" field.
  String? _nomemedico;
  String get nomemedico => _nomemedico ?? '';
  set nomemedico(String? val) => _nomemedico = val;

  bool hasNomemedico() => _nomemedico != null;

  // "numeroregistro" field.
  String? _numeroregistro;
  String get numeroregistro => _numeroregistro ?? '';
  set numeroregistro(String? val) => _numeroregistro = val;

  bool hasNumeroregistro() => _numeroregistro != null;

  // "idcidade" field.
  int? _idcidade;
  int get idcidade => _idcidade ?? 0;
  set idcidade(int? val) => _idcidade = val;

  void incrementIdcidade(int amount) => idcidade = idcidade + amount;

  bool hasIdcidade() => _idcidade != null;

  // "uuidmed" field.
  String? _uuidmed;
  String get uuidmed => _uuidmed ?? '';
  set uuidmed(String? val) => _uuidmed = val;

  bool hasUuidmed() => _uuidmed != null;

  static DadosMedicoStruct fromMap(Map<String, dynamic> data) =>
      DadosMedicoStruct(
        idmed: castToType<int>(data['idmed']),
        registro: data['registro'] as String?,
        especial: data['especial'] as String?,
        nomemedico: data['nomemedico'] as String?,
        numeroregistro: data['numeroregistro'] as String?,
        idcidade: castToType<int>(data['idcidade']),
        uuidmed: data['uuidmed'] as String?,
      );

  static DadosMedicoStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosMedicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idmed': _idmed,
        'registro': _registro,
        'especial': _especial,
        'nomemedico': _nomemedico,
        'numeroregistro': _numeroregistro,
        'idcidade': _idcidade,
        'uuidmed': _uuidmed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idmed': serializeParam(
          _idmed,
          ParamType.int,
        ),
        'registro': serializeParam(
          _registro,
          ParamType.String,
        ),
        'especial': serializeParam(
          _especial,
          ParamType.String,
        ),
        'nomemedico': serializeParam(
          _nomemedico,
          ParamType.String,
        ),
        'numeroregistro': serializeParam(
          _numeroregistro,
          ParamType.String,
        ),
        'idcidade': serializeParam(
          _idcidade,
          ParamType.int,
        ),
        'uuidmed': serializeParam(
          _uuidmed,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosMedicoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosMedicoStruct(
        idmed: deserializeParam(
          data['idmed'],
          ParamType.int,
          false,
        ),
        registro: deserializeParam(
          data['registro'],
          ParamType.String,
          false,
        ),
        especial: deserializeParam(
          data['especial'],
          ParamType.String,
          false,
        ),
        nomemedico: deserializeParam(
          data['nomemedico'],
          ParamType.String,
          false,
        ),
        numeroregistro: deserializeParam(
          data['numeroregistro'],
          ParamType.String,
          false,
        ),
        idcidade: deserializeParam(
          data['idcidade'],
          ParamType.int,
          false,
        ),
        uuidmed: deserializeParam(
          data['uuidmed'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosMedicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosMedicoStruct &&
        idmed == other.idmed &&
        registro == other.registro &&
        especial == other.especial &&
        nomemedico == other.nomemedico &&
        numeroregistro == other.numeroregistro &&
        idcidade == other.idcidade &&
        uuidmed == other.uuidmed;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idmed,
        registro,
        especial,
        nomemedico,
        numeroregistro,
        idcidade,
        uuidmed
      ]);
}

DadosMedicoStruct createDadosMedicoStruct({
  int? idmed,
  String? registro,
  String? especial,
  String? nomemedico,
  String? numeroregistro,
  int? idcidade,
  String? uuidmed,
}) =>
    DadosMedicoStruct(
      idmed: idmed,
      registro: registro,
      especial: especial,
      nomemedico: nomemedico,
      numeroregistro: numeroregistro,
      idcidade: idcidade,
      uuidmed: uuidmed,
    );
