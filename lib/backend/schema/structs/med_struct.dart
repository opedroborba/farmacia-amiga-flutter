// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedStruct extends BaseStruct {
  MedStruct({
    String? nome,
    List<String>? relacionados,
    String? slug,
    int? idmedicacao,
  })  : _nome = nome,
        _relacionados = relacionados,
        _slug = slug,
        _idmedicacao = idmedicacao;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "relacionados" field.
  List<String>? _relacionados;
  List<String> get relacionados => _relacionados ?? const [];
  set relacionados(List<String>? val) => _relacionados = val;

  void updateRelacionados(Function(List<String>) updateFn) {
    updateFn(_relacionados ??= []);
  }

  bool hasRelacionados() => _relacionados != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "idmedicacao" field.
  int? _idmedicacao;
  int get idmedicacao => _idmedicacao ?? 0;
  set idmedicacao(int? val) => _idmedicacao = val;

  void incrementIdmedicacao(int amount) => idmedicacao = idmedicacao + amount;

  bool hasIdmedicacao() => _idmedicacao != null;

  static MedStruct fromMap(Map<String, dynamic> data) => MedStruct(
        nome: data['nome'] as String?,
        relacionados: getDataList(data['relacionados']),
        slug: data['slug'] as String?,
        idmedicacao: castToType<int>(data['idmedicacao']),
      );

  static MedStruct? maybeFromMap(dynamic data) =>
      data is Map ? MedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'relacionados': _relacionados,
        'slug': _slug,
        'idmedicacao': _idmedicacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'relacionados': serializeParam(
          _relacionados,
          ParamType.String,
          isList: true,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'idmedicacao': serializeParam(
          _idmedicacao,
          ParamType.int,
        ),
      }.withoutNulls;

  static MedStruct fromSerializableMap(Map<String, dynamic> data) => MedStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        relacionados: deserializeParam<String>(
          data['relacionados'],
          ParamType.String,
          true,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        idmedicacao: deserializeParam(
          data['idmedicacao'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MedStruct &&
        nome == other.nome &&
        listEquality.equals(relacionados, other.relacionados) &&
        slug == other.slug &&
        idmedicacao == other.idmedicacao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, relacionados, slug, idmedicacao]);
}

MedStruct createMedStruct({
  String? nome,
  String? slug,
  int? idmedicacao,
}) =>
    MedStruct(
      nome: nome,
      slug: slug,
      idmedicacao: idmedicacao,
    );
