// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosFarmaciaStruct extends BaseStruct {
  DadosFarmaciaStruct({
    String? nomefarmacia,
    String? emailfarmacia,
    String? nomecidade,
    String? enderecorua,
    String? enderecornum,
    String? enderecocomplemento,
    String? enderecobairro,
    String? enderecocep,
    String? uuidfarmacia,
    int? codcidade,
  })  : _nomefarmacia = nomefarmacia,
        _emailfarmacia = emailfarmacia,
        _nomecidade = nomecidade,
        _enderecorua = enderecorua,
        _enderecornum = enderecornum,
        _enderecocomplemento = enderecocomplemento,
        _enderecobairro = enderecobairro,
        _enderecocep = enderecocep,
        _uuidfarmacia = uuidfarmacia,
        _codcidade = codcidade;

  // "nomefarmacia" field.
  String? _nomefarmacia;
  String get nomefarmacia => _nomefarmacia ?? '';
  set nomefarmacia(String? val) => _nomefarmacia = val;

  bool hasNomefarmacia() => _nomefarmacia != null;

  // "emailfarmacia" field.
  String? _emailfarmacia;
  String get emailfarmacia => _emailfarmacia ?? '';
  set emailfarmacia(String? val) => _emailfarmacia = val;

  bool hasEmailfarmacia() => _emailfarmacia != null;

  // "nomecidade" field.
  String? _nomecidade;
  String get nomecidade => _nomecidade ?? '';
  set nomecidade(String? val) => _nomecidade = val;

  bool hasNomecidade() => _nomecidade != null;

  // "enderecorua" field.
  String? _enderecorua;
  String get enderecorua => _enderecorua ?? '';
  set enderecorua(String? val) => _enderecorua = val;

  bool hasEnderecorua() => _enderecorua != null;

  // "enderecornum" field.
  String? _enderecornum;
  String get enderecornum => _enderecornum ?? '';
  set enderecornum(String? val) => _enderecornum = val;

  bool hasEnderecornum() => _enderecornum != null;

  // "enderecocomplemento" field.
  String? _enderecocomplemento;
  String get enderecocomplemento => _enderecocomplemento ?? '';
  set enderecocomplemento(String? val) => _enderecocomplemento = val;

  bool hasEnderecocomplemento() => _enderecocomplemento != null;

  // "enderecobairro" field.
  String? _enderecobairro;
  String get enderecobairro => _enderecobairro ?? '';
  set enderecobairro(String? val) => _enderecobairro = val;

  bool hasEnderecobairro() => _enderecobairro != null;

  // "enderecocep" field.
  String? _enderecocep;
  String get enderecocep => _enderecocep ?? '';
  set enderecocep(String? val) => _enderecocep = val;

  bool hasEnderecocep() => _enderecocep != null;

  // "uuidfarmacia" field.
  String? _uuidfarmacia;
  String get uuidfarmacia => _uuidfarmacia ?? '';
  set uuidfarmacia(String? val) => _uuidfarmacia = val;

  bool hasUuidfarmacia() => _uuidfarmacia != null;

  // "codcidade" field.
  int? _codcidade;
  int get codcidade => _codcidade ?? 0;
  set codcidade(int? val) => _codcidade = val;

  void incrementCodcidade(int amount) => codcidade = codcidade + amount;

  bool hasCodcidade() => _codcidade != null;

  static DadosFarmaciaStruct fromMap(Map<String, dynamic> data) =>
      DadosFarmaciaStruct(
        nomefarmacia: data['nomefarmacia'] as String?,
        emailfarmacia: data['emailfarmacia'] as String?,
        nomecidade: data['nomecidade'] as String?,
        enderecorua: data['enderecorua'] as String?,
        enderecornum: data['enderecornum'] as String?,
        enderecocomplemento: data['enderecocomplemento'] as String?,
        enderecobairro: data['enderecobairro'] as String?,
        enderecocep: data['enderecocep'] as String?,
        uuidfarmacia: data['uuidfarmacia'] as String?,
        codcidade: castToType<int>(data['codcidade']),
      );

  static DadosFarmaciaStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosFarmaciaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nomefarmacia': _nomefarmacia,
        'emailfarmacia': _emailfarmacia,
        'nomecidade': _nomecidade,
        'enderecorua': _enderecorua,
        'enderecornum': _enderecornum,
        'enderecocomplemento': _enderecocomplemento,
        'enderecobairro': _enderecobairro,
        'enderecocep': _enderecocep,
        'uuidfarmacia': _uuidfarmacia,
        'codcidade': _codcidade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomefarmacia': serializeParam(
          _nomefarmacia,
          ParamType.String,
        ),
        'emailfarmacia': serializeParam(
          _emailfarmacia,
          ParamType.String,
        ),
        'nomecidade': serializeParam(
          _nomecidade,
          ParamType.String,
        ),
        'enderecorua': serializeParam(
          _enderecorua,
          ParamType.String,
        ),
        'enderecornum': serializeParam(
          _enderecornum,
          ParamType.String,
        ),
        'enderecocomplemento': serializeParam(
          _enderecocomplemento,
          ParamType.String,
        ),
        'enderecobairro': serializeParam(
          _enderecobairro,
          ParamType.String,
        ),
        'enderecocep': serializeParam(
          _enderecocep,
          ParamType.String,
        ),
        'uuidfarmacia': serializeParam(
          _uuidfarmacia,
          ParamType.String,
        ),
        'codcidade': serializeParam(
          _codcidade,
          ParamType.int,
        ),
      }.withoutNulls;

  static DadosFarmaciaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosFarmaciaStruct(
        nomefarmacia: deserializeParam(
          data['nomefarmacia'],
          ParamType.String,
          false,
        ),
        emailfarmacia: deserializeParam(
          data['emailfarmacia'],
          ParamType.String,
          false,
        ),
        nomecidade: deserializeParam(
          data['nomecidade'],
          ParamType.String,
          false,
        ),
        enderecorua: deserializeParam(
          data['enderecorua'],
          ParamType.String,
          false,
        ),
        enderecornum: deserializeParam(
          data['enderecornum'],
          ParamType.String,
          false,
        ),
        enderecocomplemento: deserializeParam(
          data['enderecocomplemento'],
          ParamType.String,
          false,
        ),
        enderecobairro: deserializeParam(
          data['enderecobairro'],
          ParamType.String,
          false,
        ),
        enderecocep: deserializeParam(
          data['enderecocep'],
          ParamType.String,
          false,
        ),
        uuidfarmacia: deserializeParam(
          data['uuidfarmacia'],
          ParamType.String,
          false,
        ),
        codcidade: deserializeParam(
          data['codcidade'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DadosFarmaciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosFarmaciaStruct &&
        nomefarmacia == other.nomefarmacia &&
        emailfarmacia == other.emailfarmacia &&
        nomecidade == other.nomecidade &&
        enderecorua == other.enderecorua &&
        enderecornum == other.enderecornum &&
        enderecocomplemento == other.enderecocomplemento &&
        enderecobairro == other.enderecobairro &&
        enderecocep == other.enderecocep &&
        uuidfarmacia == other.uuidfarmacia &&
        codcidade == other.codcidade;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomefarmacia,
        emailfarmacia,
        nomecidade,
        enderecorua,
        enderecornum,
        enderecocomplemento,
        enderecobairro,
        enderecocep,
        uuidfarmacia,
        codcidade
      ]);
}

DadosFarmaciaStruct createDadosFarmaciaStruct({
  String? nomefarmacia,
  String? emailfarmacia,
  String? nomecidade,
  String? enderecorua,
  String? enderecornum,
  String? enderecocomplemento,
  String? enderecobairro,
  String? enderecocep,
  String? uuidfarmacia,
  int? codcidade,
}) =>
    DadosFarmaciaStruct(
      nomefarmacia: nomefarmacia,
      emailfarmacia: emailfarmacia,
      nomecidade: nomecidade,
      enderecorua: enderecorua,
      enderecornum: enderecornum,
      enderecocomplemento: enderecocomplemento,
      enderecobairro: enderecobairro,
      enderecocep: enderecocep,
      uuidfarmacia: uuidfarmacia,
      codcidade: codcidade,
    );
