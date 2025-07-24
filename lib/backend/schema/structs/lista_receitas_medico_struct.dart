// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaReceitasMedicoStruct extends BaseStruct {
  ListaReceitasMedicoStruct({
    int? identificador,
    String? chave,
    String? datacriacao,
    String? uuidpaciente,
    String? statuspedido,
    String? documento,
  })  : _identificador = identificador,
        _chave = chave,
        _datacriacao = datacriacao,
        _uuidpaciente = uuidpaciente,
        _statuspedido = statuspedido,
        _documento = documento;

  // "identificador" field.
  int? _identificador;
  int get identificador => _identificador ?? 0;
  set identificador(int? val) => _identificador = val;

  void incrementIdentificador(int amount) =>
      identificador = identificador + amount;

  bool hasIdentificador() => _identificador != null;

  // "chave" field.
  String? _chave;
  String get chave => _chave ?? '';
  set chave(String? val) => _chave = val;

  bool hasChave() => _chave != null;

  // "datacriacao" field.
  String? _datacriacao;
  String get datacriacao => _datacriacao ?? '';
  set datacriacao(String? val) => _datacriacao = val;

  bool hasDatacriacao() => _datacriacao != null;

  // "uuidpaciente" field.
  String? _uuidpaciente;
  String get uuidpaciente => _uuidpaciente ?? '';
  set uuidpaciente(String? val) => _uuidpaciente = val;

  bool hasUuidpaciente() => _uuidpaciente != null;

  // "statuspedido" field.
  String? _statuspedido;
  String get statuspedido => _statuspedido ?? '';
  set statuspedido(String? val) => _statuspedido = val;

  bool hasStatuspedido() => _statuspedido != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  set documento(String? val) => _documento = val;

  bool hasDocumento() => _documento != null;

  static ListaReceitasMedicoStruct fromMap(Map<String, dynamic> data) =>
      ListaReceitasMedicoStruct(
        identificador: castToType<int>(data['identificador']),
        chave: data['chave'] as String?,
        datacriacao: data['datacriacao'] as String?,
        uuidpaciente: data['uuidpaciente'] as String?,
        statuspedido: data['statuspedido'] as String?,
        documento: data['documento'] as String?,
      );

  static ListaReceitasMedicoStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaReceitasMedicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identificador': _identificador,
        'chave': _chave,
        'datacriacao': _datacriacao,
        'uuidpaciente': _uuidpaciente,
        'statuspedido': _statuspedido,
        'documento': _documento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identificador': serializeParam(
          _identificador,
          ParamType.int,
        ),
        'chave': serializeParam(
          _chave,
          ParamType.String,
        ),
        'datacriacao': serializeParam(
          _datacriacao,
          ParamType.String,
        ),
        'uuidpaciente': serializeParam(
          _uuidpaciente,
          ParamType.String,
        ),
        'statuspedido': serializeParam(
          _statuspedido,
          ParamType.String,
        ),
        'documento': serializeParam(
          _documento,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaReceitasMedicoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListaReceitasMedicoStruct(
        identificador: deserializeParam(
          data['identificador'],
          ParamType.int,
          false,
        ),
        chave: deserializeParam(
          data['chave'],
          ParamType.String,
          false,
        ),
        datacriacao: deserializeParam(
          data['datacriacao'],
          ParamType.String,
          false,
        ),
        uuidpaciente: deserializeParam(
          data['uuidpaciente'],
          ParamType.String,
          false,
        ),
        statuspedido: deserializeParam(
          data['statuspedido'],
          ParamType.String,
          false,
        ),
        documento: deserializeParam(
          data['documento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaReceitasMedicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaReceitasMedicoStruct &&
        identificador == other.identificador &&
        chave == other.chave &&
        datacriacao == other.datacriacao &&
        uuidpaciente == other.uuidpaciente &&
        statuspedido == other.statuspedido &&
        documento == other.documento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        identificador,
        chave,
        datacriacao,
        uuidpaciente,
        statuspedido,
        documento
      ]);
}

ListaReceitasMedicoStruct createListaReceitasMedicoStruct({
  int? identificador,
  String? chave,
  String? datacriacao,
  String? uuidpaciente,
  String? statuspedido,
  String? documento,
}) =>
    ListaReceitasMedicoStruct(
      identificador: identificador,
      chave: chave,
      datacriacao: datacriacao,
      uuidpaciente: uuidpaciente,
      statuspedido: statuspedido,
      documento: documento,
    );
