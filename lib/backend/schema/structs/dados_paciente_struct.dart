// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosPacienteStruct extends BaseStruct {
  DadosPacienteStruct({
    String? pfpj,
    String? paciente,
    int? idpaciente,
    int? idusuario,
    String? cidade,
    String? estado,
  })  : _pfpj = pfpj,
        _paciente = paciente,
        _idpaciente = idpaciente,
        _idusuario = idusuario,
        _cidade = cidade,
        _estado = estado;

  // "pfpj" field.
  String? _pfpj;
  String get pfpj => _pfpj ?? '';
  set pfpj(String? val) => _pfpj = val;

  bool hasPfpj() => _pfpj != null;

  // "paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  set paciente(String? val) => _paciente = val;

  bool hasPaciente() => _paciente != null;

  // "idpaciente" field.
  int? _idpaciente;
  int get idpaciente => _idpaciente ?? 0;
  set idpaciente(int? val) => _idpaciente = val;

  void incrementIdpaciente(int amount) => idpaciente = idpaciente + amount;

  bool hasIdpaciente() => _idpaciente != null;

  // "idusuario" field.
  int? _idusuario;
  int get idusuario => _idusuario ?? 0;
  set idusuario(int? val) => _idusuario = val;

  void incrementIdusuario(int amount) => idusuario = idusuario + amount;

  bool hasIdusuario() => _idusuario != null;

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

  static DadosPacienteStruct fromMap(Map<String, dynamic> data) =>
      DadosPacienteStruct(
        pfpj: data['pfpj'] as String?,
        paciente: data['paciente'] as String?,
        idpaciente: castToType<int>(data['idpaciente']),
        idusuario: castToType<int>(data['idusuario']),
        cidade: data['cidade'] as String?,
        estado: data['estado'] as String?,
      );

  static DadosPacienteStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosPacienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pfpj': _pfpj,
        'paciente': _paciente,
        'idpaciente': _idpaciente,
        'idusuario': _idusuario,
        'cidade': _cidade,
        'estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pfpj': serializeParam(
          _pfpj,
          ParamType.String,
        ),
        'paciente': serializeParam(
          _paciente,
          ParamType.String,
        ),
        'idpaciente': serializeParam(
          _idpaciente,
          ParamType.int,
        ),
        'idusuario': serializeParam(
          _idusuario,
          ParamType.int,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosPacienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosPacienteStruct(
        pfpj: deserializeParam(
          data['pfpj'],
          ParamType.String,
          false,
        ),
        paciente: deserializeParam(
          data['paciente'],
          ParamType.String,
          false,
        ),
        idpaciente: deserializeParam(
          data['idpaciente'],
          ParamType.int,
          false,
        ),
        idusuario: deserializeParam(
          data['idusuario'],
          ParamType.int,
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
      );

  @override
  String toString() => 'DadosPacienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosPacienteStruct &&
        pfpj == other.pfpj &&
        paciente == other.paciente &&
        idpaciente == other.idpaciente &&
        idusuario == other.idusuario &&
        cidade == other.cidade &&
        estado == other.estado;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([pfpj, paciente, idpaciente, idusuario, cidade, estado]);
}

DadosPacienteStruct createDadosPacienteStruct({
  String? pfpj,
  String? paciente,
  int? idpaciente,
  int? idusuario,
  String? cidade,
  String? estado,
}) =>
    DadosPacienteStruct(
      pfpj: pfpj,
      paciente: paciente,
      idpaciente: idpaciente,
      idusuario: idusuario,
      cidade: cidade,
      estado: estado,
    );
