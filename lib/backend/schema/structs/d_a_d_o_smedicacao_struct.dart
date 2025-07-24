// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DADOSmedicacaoStruct extends BaseStruct {
  DADOSmedicacaoStruct({
    int? idmedicacao,
    String? nome,
  })  : _idmedicacao = idmedicacao,
        _nome = nome;

  // "idmedicacao" field.
  int? _idmedicacao;
  int get idmedicacao => _idmedicacao ?? 0;
  set idmedicacao(int? val) => _idmedicacao = val;

  void incrementIdmedicacao(int amount) => idmedicacao = idmedicacao + amount;

  bool hasIdmedicacao() => _idmedicacao != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static DADOSmedicacaoStruct fromMap(Map<String, dynamic> data) =>
      DADOSmedicacaoStruct(
        idmedicacao: castToType<int>(data['idmedicacao']),
        nome: data['nome'] as String?,
      );

  static DADOSmedicacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? DADOSmedicacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idmedicacao': _idmedicacao,
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idmedicacao': serializeParam(
          _idmedicacao,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static DADOSmedicacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DADOSmedicacaoStruct(
        idmedicacao: deserializeParam(
          data['idmedicacao'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DADOSmedicacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DADOSmedicacaoStruct &&
        idmedicacao == other.idmedicacao &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([idmedicacao, nome]);
}

DADOSmedicacaoStruct createDADOSmedicacaoStruct({
  int? idmedicacao,
  String? nome,
}) =>
    DADOSmedicacaoStruct(
      idmedicacao: idmedicacao,
      nome: nome,
    );
