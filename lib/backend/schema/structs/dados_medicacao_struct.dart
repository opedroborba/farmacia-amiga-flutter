// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosMedicacaoStruct extends BaseStruct {
  DadosMedicacaoStruct({
    String? principio,
    String? tipo,
    int? cxs,
    int? qtdcaixa,
    int? concent,
    String? unmed,
    String? lab,
    String? vencimento,
    String? img,
    String? mtdinjestao,
    int? idmedicamento,
  })  : _principio = principio,
        _tipo = tipo,
        _cxs = cxs,
        _qtdcaixa = qtdcaixa,
        _concent = concent,
        _unmed = unmed,
        _lab = lab,
        _vencimento = vencimento,
        _img = img,
        _mtdinjestao = mtdinjestao,
        _idmedicamento = idmedicamento;

  // "principio" field.
  String? _principio;
  String get principio => _principio ?? '';
  set principio(String? val) => _principio = val;

  bool hasPrincipio() => _principio != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "cxs" field.
  int? _cxs;
  int get cxs => _cxs ?? 0;
  set cxs(int? val) => _cxs = val;

  void incrementCxs(int amount) => cxs = cxs + amount;

  bool hasCxs() => _cxs != null;

  // "qtdcaixa" field.
  int? _qtdcaixa;
  int get qtdcaixa => _qtdcaixa ?? 0;
  set qtdcaixa(int? val) => _qtdcaixa = val;

  void incrementQtdcaixa(int amount) => qtdcaixa = qtdcaixa + amount;

  bool hasQtdcaixa() => _qtdcaixa != null;

  // "concent" field.
  int? _concent;
  int get concent => _concent ?? 0;
  set concent(int? val) => _concent = val;

  void incrementConcent(int amount) => concent = concent + amount;

  bool hasConcent() => _concent != null;

  // "unmed" field.
  String? _unmed;
  String get unmed => _unmed ?? '';
  set unmed(String? val) => _unmed = val;

  bool hasUnmed() => _unmed != null;

  // "lab" field.
  String? _lab;
  String get lab => _lab ?? '';
  set lab(String? val) => _lab = val;

  bool hasLab() => _lab != null;

  // "vencimento" field.
  String? _vencimento;
  String get vencimento => _vencimento ?? '';
  set vencimento(String? val) => _vencimento = val;

  bool hasVencimento() => _vencimento != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "mtdinjestao" field.
  String? _mtdinjestao;
  String get mtdinjestao => _mtdinjestao ?? '';
  set mtdinjestao(String? val) => _mtdinjestao = val;

  bool hasMtdinjestao() => _mtdinjestao != null;

  // "idmedicamento" field.
  int? _idmedicamento;
  int get idmedicamento => _idmedicamento ?? 0;
  set idmedicamento(int? val) => _idmedicamento = val;

  void incrementIdmedicamento(int amount) =>
      idmedicamento = idmedicamento + amount;

  bool hasIdmedicamento() => _idmedicamento != null;

  static DadosMedicacaoStruct fromMap(Map<String, dynamic> data) =>
      DadosMedicacaoStruct(
        principio: data['principio'] as String?,
        tipo: data['tipo'] as String?,
        cxs: castToType<int>(data['cxs']),
        qtdcaixa: castToType<int>(data['qtdcaixa']),
        concent: castToType<int>(data['concent']),
        unmed: data['unmed'] as String?,
        lab: data['lab'] as String?,
        vencimento: data['vencimento'] as String?,
        img: data['img'] as String?,
        mtdinjestao: data['mtdinjestao'] as String?,
        idmedicamento: castToType<int>(data['idmedicamento']),
      );

  static DadosMedicacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosMedicacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'principio': _principio,
        'tipo': _tipo,
        'cxs': _cxs,
        'qtdcaixa': _qtdcaixa,
        'concent': _concent,
        'unmed': _unmed,
        'lab': _lab,
        'vencimento': _vencimento,
        'img': _img,
        'mtdinjestao': _mtdinjestao,
        'idmedicamento': _idmedicamento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'principio': serializeParam(
          _principio,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'cxs': serializeParam(
          _cxs,
          ParamType.int,
        ),
        'qtdcaixa': serializeParam(
          _qtdcaixa,
          ParamType.int,
        ),
        'concent': serializeParam(
          _concent,
          ParamType.int,
        ),
        'unmed': serializeParam(
          _unmed,
          ParamType.String,
        ),
        'lab': serializeParam(
          _lab,
          ParamType.String,
        ),
        'vencimento': serializeParam(
          _vencimento,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'mtdinjestao': serializeParam(
          _mtdinjestao,
          ParamType.String,
        ),
        'idmedicamento': serializeParam(
          _idmedicamento,
          ParamType.int,
        ),
      }.withoutNulls;

  static DadosMedicacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosMedicacaoStruct(
        principio: deserializeParam(
          data['principio'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        cxs: deserializeParam(
          data['cxs'],
          ParamType.int,
          false,
        ),
        qtdcaixa: deserializeParam(
          data['qtdcaixa'],
          ParamType.int,
          false,
        ),
        concent: deserializeParam(
          data['concent'],
          ParamType.int,
          false,
        ),
        unmed: deserializeParam(
          data['unmed'],
          ParamType.String,
          false,
        ),
        lab: deserializeParam(
          data['lab'],
          ParamType.String,
          false,
        ),
        vencimento: deserializeParam(
          data['vencimento'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        mtdinjestao: deserializeParam(
          data['mtdinjestao'],
          ParamType.String,
          false,
        ),
        idmedicamento: deserializeParam(
          data['idmedicamento'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DadosMedicacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosMedicacaoStruct &&
        principio == other.principio &&
        tipo == other.tipo &&
        cxs == other.cxs &&
        qtdcaixa == other.qtdcaixa &&
        concent == other.concent &&
        unmed == other.unmed &&
        lab == other.lab &&
        vencimento == other.vencimento &&
        img == other.img &&
        mtdinjestao == other.mtdinjestao &&
        idmedicamento == other.idmedicamento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        principio,
        tipo,
        cxs,
        qtdcaixa,
        concent,
        unmed,
        lab,
        vencimento,
        img,
        mtdinjestao,
        idmedicamento
      ]);
}

DadosMedicacaoStruct createDadosMedicacaoStruct({
  String? principio,
  String? tipo,
  int? cxs,
  int? qtdcaixa,
  int? concent,
  String? unmed,
  String? lab,
  String? vencimento,
  String? img,
  String? mtdinjestao,
  int? idmedicamento,
}) =>
    DadosMedicacaoStruct(
      principio: principio,
      tipo: tipo,
      cxs: cxs,
      qtdcaixa: qtdcaixa,
      concent: concent,
      unmed: unmed,
      lab: lab,
      vencimento: vencimento,
      img: img,
      mtdinjestao: mtdinjestao,
      idmedicamento: idmedicamento,
    );
