// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceitasStruct extends BaseStruct {
  ReceitasStruct({
    int? idreceita,
    String? datacriacao,
    int? idusuario,
    String? nomepaciente,
    String? cpfpaciente,
    String? cidade,
    String? estado,
    String? chaveid,
  })  : _idreceita = idreceita,
        _datacriacao = datacriacao,
        _idusuario = idusuario,
        _nomepaciente = nomepaciente,
        _cpfpaciente = cpfpaciente,
        _cidade = cidade,
        _estado = estado,
        _chaveid = chaveid;

  // "idreceita" field.
  int? _idreceita;
  int get idreceita => _idreceita ?? 0;
  set idreceita(int? val) => _idreceita = val;

  void incrementIdreceita(int amount) => idreceita = idreceita + amount;

  bool hasIdreceita() => _idreceita != null;

  // "datacriacao" field.
  String? _datacriacao;
  String get datacriacao => _datacriacao ?? '';
  set datacriacao(String? val) => _datacriacao = val;

  bool hasDatacriacao() => _datacriacao != null;

  // "idusuario" field.
  int? _idusuario;
  int get idusuario => _idusuario ?? 0;
  set idusuario(int? val) => _idusuario = val;

  void incrementIdusuario(int amount) => idusuario = idusuario + amount;

  bool hasIdusuario() => _idusuario != null;

  // "nomepaciente" field.
  String? _nomepaciente;
  String get nomepaciente => _nomepaciente ?? '';
  set nomepaciente(String? val) => _nomepaciente = val;

  bool hasNomepaciente() => _nomepaciente != null;

  // "cpfpaciente" field.
  String? _cpfpaciente;
  String get cpfpaciente => _cpfpaciente ?? '';
  set cpfpaciente(String? val) => _cpfpaciente = val;

  bool hasCpfpaciente() => _cpfpaciente != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "chaveid" field.
  String? _chaveid;
  String get chaveid => _chaveid ?? '';
  set chaveid(String? val) => _chaveid = val;

  bool hasChaveid() => _chaveid != null;

  static ReceitasStruct fromMap(Map<String, dynamic> data) => ReceitasStruct(
        idreceita: castToType<int>(data['idreceita']),
        datacriacao: data['datacriacao'] as String?,
        idusuario: castToType<int>(data['idusuario']),
        nomepaciente: data['nomepaciente'] as String?,
        cpfpaciente: data['cpfpaciente'] as String?,
        cidade: data['cidade'] as String?,
        estado: data['estado'] as String?,
        chaveid: data['chaveid'] as String?,
      );

  static ReceitasStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReceitasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idreceita': _idreceita,
        'datacriacao': _datacriacao,
        'idusuario': _idusuario,
        'nomepaciente': _nomepaciente,
        'cpfpaciente': _cpfpaciente,
        'cidade': _cidade,
        'estado': _estado,
        'chaveid': _chaveid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idreceita': serializeParam(
          _idreceita,
          ParamType.int,
        ),
        'datacriacao': serializeParam(
          _datacriacao,
          ParamType.String,
        ),
        'idusuario': serializeParam(
          _idusuario,
          ParamType.int,
        ),
        'nomepaciente': serializeParam(
          _nomepaciente,
          ParamType.String,
        ),
        'cpfpaciente': serializeParam(
          _cpfpaciente,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'chaveid': serializeParam(
          _chaveid,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReceitasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReceitasStruct(
        idreceita: deserializeParam(
          data['idreceita'],
          ParamType.int,
          false,
        ),
        datacriacao: deserializeParam(
          data['datacriacao'],
          ParamType.String,
          false,
        ),
        idusuario: deserializeParam(
          data['idusuario'],
          ParamType.int,
          false,
        ),
        nomepaciente: deserializeParam(
          data['nomepaciente'],
          ParamType.String,
          false,
        ),
        cpfpaciente: deserializeParam(
          data['cpfpaciente'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        chaveid: deserializeParam(
          data['chaveid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReceitasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReceitasStruct &&
        idreceita == other.idreceita &&
        datacriacao == other.datacriacao &&
        idusuario == other.idusuario &&
        nomepaciente == other.nomepaciente &&
        cpfpaciente == other.cpfpaciente &&
        cidade == other.cidade &&
        estado == other.estado &&
        chaveid == other.chaveid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idreceita,
        datacriacao,
        idusuario,
        nomepaciente,
        cpfpaciente,
        cidade,
        estado,
        chaveid
      ]);
}

ReceitasStruct createReceitasStruct({
  int? idreceita,
  String? datacriacao,
  int? idusuario,
  String? nomepaciente,
  String? cpfpaciente,
  String? cidade,
  String? estado,
  String? chaveid,
}) =>
    ReceitasStruct(
      idreceita: idreceita,
      datacriacao: datacriacao,
      idusuario: idusuario,
      nomepaciente: nomepaciente,
      cpfpaciente: cpfpaciente,
      cidade: cidade,
      estado: estado,
      chaveid: chaveid,
    );
