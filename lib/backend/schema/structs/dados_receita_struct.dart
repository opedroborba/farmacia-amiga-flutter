// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosReceitaStruct extends BaseStruct {
  DadosReceitaStruct({
    String? princ,
    String? lab,
    String? chave,
    int? quantidade,
    int? frequencia,
    String? mtd,
    String? identificador,
  })  : _princ = princ,
        _lab = lab,
        _chave = chave,
        _quantidade = quantidade,
        _frequencia = frequencia,
        _mtd = mtd,
        _identificador = identificador;

  // "princ" field.
  String? _princ;
  String get princ => _princ ?? '';
  set princ(String? val) => _princ = val;

  bool hasPrinc() => _princ != null;

  // "lab" field.
  String? _lab;
  String get lab => _lab ?? '';
  set lab(String? val) => _lab = val;

  bool hasLab() => _lab != null;

  // "chave" field.
  String? _chave;
  String get chave => _chave ?? '';
  set chave(String? val) => _chave = val;

  bool hasChave() => _chave != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "frequencia" field.
  int? _frequencia;
  int get frequencia => _frequencia ?? 0;
  set frequencia(int? val) => _frequencia = val;

  void incrementFrequencia(int amount) => frequencia = frequencia + amount;

  bool hasFrequencia() => _frequencia != null;

  // "mtd" field.
  String? _mtd;
  String get mtd => _mtd ?? '';
  set mtd(String? val) => _mtd = val;

  bool hasMtd() => _mtd != null;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  set identificador(String? val) => _identificador = val;

  bool hasIdentificador() => _identificador != null;

  static DadosReceitaStruct fromMap(Map<String, dynamic> data) =>
      DadosReceitaStruct(
        princ: data['princ'] as String?,
        lab: data['lab'] as String?,
        chave: data['chave'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        frequencia: castToType<int>(data['frequencia']),
        mtd: data['mtd'] as String?,
        identificador: data['identificador'] as String?,
      );

  static DadosReceitaStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosReceitaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'princ': _princ,
        'lab': _lab,
        'chave': _chave,
        'quantidade': _quantidade,
        'frequencia': _frequencia,
        'mtd': _mtd,
        'identificador': _identificador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'princ': serializeParam(
          _princ,
          ParamType.String,
        ),
        'lab': serializeParam(
          _lab,
          ParamType.String,
        ),
        'chave': serializeParam(
          _chave,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'frequencia': serializeParam(
          _frequencia,
          ParamType.int,
        ),
        'mtd': serializeParam(
          _mtd,
          ParamType.String,
        ),
        'identificador': serializeParam(
          _identificador,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosReceitaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosReceitaStruct(
        princ: deserializeParam(
          data['princ'],
          ParamType.String,
          false,
        ),
        lab: deserializeParam(
          data['lab'],
          ParamType.String,
          false,
        ),
        chave: deserializeParam(
          data['chave'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        frequencia: deserializeParam(
          data['frequencia'],
          ParamType.int,
          false,
        ),
        mtd: deserializeParam(
          data['mtd'],
          ParamType.String,
          false,
        ),
        identificador: deserializeParam(
          data['identificador'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosReceitaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosReceitaStruct &&
        princ == other.princ &&
        lab == other.lab &&
        chave == other.chave &&
        quantidade == other.quantidade &&
        frequencia == other.frequencia &&
        mtd == other.mtd &&
        identificador == other.identificador;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([princ, lab, chave, quantidade, frequencia, mtd, identificador]);
}

DadosReceitaStruct createDadosReceitaStruct({
  String? princ,
  String? lab,
  String? chave,
  int? quantidade,
  int? frequencia,
  String? mtd,
  String? identificador,
}) =>
    DadosReceitaStruct(
      princ: princ,
      lab: lab,
      chave: chave,
      quantidade: quantidade,
      frequencia: frequencia,
      mtd: mtd,
      identificador: identificador,
    );
