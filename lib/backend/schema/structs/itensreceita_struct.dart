// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensreceitaStruct extends BaseStruct {
  ItensreceitaStruct({
    String? lab,
    String? princ,
    int? dos,
    int? qtdinjestao,
    String? freqinjestao,
    String? metinjestao,
    String? chaveid,
    int? identificador,
  })  : _lab = lab,
        _princ = princ,
        _dos = dos,
        _qtdinjestao = qtdinjestao,
        _freqinjestao = freqinjestao,
        _metinjestao = metinjestao,
        _chaveid = chaveid,
        _identificador = identificador;

  // "lab" field.
  String? _lab;
  String get lab => _lab ?? '';
  set lab(String? val) => _lab = val;

  bool hasLab() => _lab != null;

  // "princ" field.
  String? _princ;
  String get princ => _princ ?? '';
  set princ(String? val) => _princ = val;

  bool hasPrinc() => _princ != null;

  // "dos" field.
  int? _dos;
  int get dos => _dos ?? 0;
  set dos(int? val) => _dos = val;

  void incrementDos(int amount) => dos = dos + amount;

  bool hasDos() => _dos != null;

  // "qtdinjestao" field.
  int? _qtdinjestao;
  int get qtdinjestao => _qtdinjestao ?? 0;
  set qtdinjestao(int? val) => _qtdinjestao = val;

  void incrementQtdinjestao(int amount) => qtdinjestao = qtdinjestao + amount;

  bool hasQtdinjestao() => _qtdinjestao != null;

  // "freqinjestao" field.
  String? _freqinjestao;
  String get freqinjestao => _freqinjestao ?? '';
  set freqinjestao(String? val) => _freqinjestao = val;

  bool hasFreqinjestao() => _freqinjestao != null;

  // "metinjestao" field.
  String? _metinjestao;
  String get metinjestao => _metinjestao ?? '';
  set metinjestao(String? val) => _metinjestao = val;

  bool hasMetinjestao() => _metinjestao != null;

  // "chaveid" field.
  String? _chaveid;
  String get chaveid => _chaveid ?? '';
  set chaveid(String? val) => _chaveid = val;

  bool hasChaveid() => _chaveid != null;

  // "identificador" field.
  int? _identificador;
  int get identificador => _identificador ?? 0;
  set identificador(int? val) => _identificador = val;

  void incrementIdentificador(int amount) =>
      identificador = identificador + amount;

  bool hasIdentificador() => _identificador != null;

  static ItensreceitaStruct fromMap(Map<String, dynamic> data) =>
      ItensreceitaStruct(
        lab: data['lab'] as String?,
        princ: data['princ'] as String?,
        dos: castToType<int>(data['dos']),
        qtdinjestao: castToType<int>(data['qtdinjestao']),
        freqinjestao: data['freqinjestao'] as String?,
        metinjestao: data['metinjestao'] as String?,
        chaveid: data['chaveid'] as String?,
        identificador: castToType<int>(data['identificador']),
      );

  static ItensreceitaStruct? maybeFromMap(dynamic data) => data is Map
      ? ItensreceitaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'lab': _lab,
        'princ': _princ,
        'dos': _dos,
        'qtdinjestao': _qtdinjestao,
        'freqinjestao': _freqinjestao,
        'metinjestao': _metinjestao,
        'chaveid': _chaveid,
        'identificador': _identificador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lab': serializeParam(
          _lab,
          ParamType.String,
        ),
        'princ': serializeParam(
          _princ,
          ParamType.String,
        ),
        'dos': serializeParam(
          _dos,
          ParamType.int,
        ),
        'qtdinjestao': serializeParam(
          _qtdinjestao,
          ParamType.int,
        ),
        'freqinjestao': serializeParam(
          _freqinjestao,
          ParamType.String,
        ),
        'metinjestao': serializeParam(
          _metinjestao,
          ParamType.String,
        ),
        'chaveid': serializeParam(
          _chaveid,
          ParamType.String,
        ),
        'identificador': serializeParam(
          _identificador,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItensreceitaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensreceitaStruct(
        lab: deserializeParam(
          data['lab'],
          ParamType.String,
          false,
        ),
        princ: deserializeParam(
          data['princ'],
          ParamType.String,
          false,
        ),
        dos: deserializeParam(
          data['dos'],
          ParamType.int,
          false,
        ),
        qtdinjestao: deserializeParam(
          data['qtdinjestao'],
          ParamType.int,
          false,
        ),
        freqinjestao: deserializeParam(
          data['freqinjestao'],
          ParamType.String,
          false,
        ),
        metinjestao: deserializeParam(
          data['metinjestao'],
          ParamType.String,
          false,
        ),
        chaveid: deserializeParam(
          data['chaveid'],
          ParamType.String,
          false,
        ),
        identificador: deserializeParam(
          data['identificador'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItensreceitaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensreceitaStruct &&
        lab == other.lab &&
        princ == other.princ &&
        dos == other.dos &&
        qtdinjestao == other.qtdinjestao &&
        freqinjestao == other.freqinjestao &&
        metinjestao == other.metinjestao &&
        chaveid == other.chaveid &&
        identificador == other.identificador;
  }

  @override
  int get hashCode => const ListEquality().hash([
        lab,
        princ,
        dos,
        qtdinjestao,
        freqinjestao,
        metinjestao,
        chaveid,
        identificador
      ]);
}

ItensreceitaStruct createItensreceitaStruct({
  String? lab,
  String? princ,
  int? dos,
  int? qtdinjestao,
  String? freqinjestao,
  String? metinjestao,
  String? chaveid,
  int? identificador,
}) =>
    ItensreceitaStruct(
      lab: lab,
      princ: princ,
      dos: dos,
      qtdinjestao: qtdinjestao,
      freqinjestao: freqinjestao,
      metinjestao: metinjestao,
      chaveid: chaveid,
      identificador: identificador,
    );
