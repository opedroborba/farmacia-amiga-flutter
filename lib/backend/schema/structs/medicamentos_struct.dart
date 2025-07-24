// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicamentosStruct extends BaseStruct {
  MedicamentosStruct({
    int? identificador,
    String? farmacia,
    String? principioativo,
    String? tipomedicamento,
    int? caixasdisponiveis,
    int? quantidadeporcaixa,
    int? concentracaomedicamento,
    String? unidademedconcent,
    String? labmedicamento,
    DateTime? vencimento,
    String? foto,
    String? metodo,
    String? bairrofarmacia,
    String? cidadefarmacia,
    String? estadofarmacia,
    int? farmaciaid,
  })  : _identificador = identificador,
        _farmacia = farmacia,
        _principioativo = principioativo,
        _tipomedicamento = tipomedicamento,
        _caixasdisponiveis = caixasdisponiveis,
        _quantidadeporcaixa = quantidadeporcaixa,
        _concentracaomedicamento = concentracaomedicamento,
        _unidademedconcent = unidademedconcent,
        _labmedicamento = labmedicamento,
        _vencimento = vencimento,
        _foto = foto,
        _metodo = metodo,
        _bairrofarmacia = bairrofarmacia,
        _cidadefarmacia = cidadefarmacia,
        _estadofarmacia = estadofarmacia,
        _farmaciaid = farmaciaid;

  // "identificador" field.
  int? _identificador;
  int get identificador => _identificador ?? 0;
  set identificador(int? val) => _identificador = val;

  void incrementIdentificador(int amount) =>
      identificador = identificador + amount;

  bool hasIdentificador() => _identificador != null;

  // "farmacia" field.
  String? _farmacia;
  String get farmacia => _farmacia ?? '';
  set farmacia(String? val) => _farmacia = val;

  bool hasFarmacia() => _farmacia != null;

  // "principioativo" field.
  String? _principioativo;
  String get principioativo => _principioativo ?? '';
  set principioativo(String? val) => _principioativo = val;

  bool hasPrincipioativo() => _principioativo != null;

  // "tipomedicamento" field.
  String? _tipomedicamento;
  String get tipomedicamento => _tipomedicamento ?? '';
  set tipomedicamento(String? val) => _tipomedicamento = val;

  bool hasTipomedicamento() => _tipomedicamento != null;

  // "caixasdisponiveis" field.
  int? _caixasdisponiveis;
  int get caixasdisponiveis => _caixasdisponiveis ?? 0;
  set caixasdisponiveis(int? val) => _caixasdisponiveis = val;

  void incrementCaixasdisponiveis(int amount) =>
      caixasdisponiveis = caixasdisponiveis + amount;

  bool hasCaixasdisponiveis() => _caixasdisponiveis != null;

  // "quantidadeporcaixa" field.
  int? _quantidadeporcaixa;
  int get quantidadeporcaixa => _quantidadeporcaixa ?? 0;
  set quantidadeporcaixa(int? val) => _quantidadeporcaixa = val;

  void incrementQuantidadeporcaixa(int amount) =>
      quantidadeporcaixa = quantidadeporcaixa + amount;

  bool hasQuantidadeporcaixa() => _quantidadeporcaixa != null;

  // "concentracaomedicamento" field.
  int? _concentracaomedicamento;
  int get concentracaomedicamento => _concentracaomedicamento ?? 0;
  set concentracaomedicamento(int? val) => _concentracaomedicamento = val;

  void incrementConcentracaomedicamento(int amount) =>
      concentracaomedicamento = concentracaomedicamento + amount;

  bool hasConcentracaomedicamento() => _concentracaomedicamento != null;

  // "unidademedconcent" field.
  String? _unidademedconcent;
  String get unidademedconcent => _unidademedconcent ?? '';
  set unidademedconcent(String? val) => _unidademedconcent = val;

  bool hasUnidademedconcent() => _unidademedconcent != null;

  // "labmedicamento" field.
  String? _labmedicamento;
  String get labmedicamento => _labmedicamento ?? '';
  set labmedicamento(String? val) => _labmedicamento = val;

  bool hasLabmedicamento() => _labmedicamento != null;

  // "vencimento" field.
  DateTime? _vencimento;
  DateTime? get vencimento => _vencimento;
  set vencimento(DateTime? val) => _vencimento = val;

  bool hasVencimento() => _vencimento != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "metodo" field.
  String? _metodo;
  String get metodo => _metodo ?? '';
  set metodo(String? val) => _metodo = val;

  bool hasMetodo() => _metodo != null;

  // "bairrofarmacia" field.
  String? _bairrofarmacia;
  String get bairrofarmacia => _bairrofarmacia ?? '';
  set bairrofarmacia(String? val) => _bairrofarmacia = val;

  bool hasBairrofarmacia() => _bairrofarmacia != null;

  // "cidadefarmacia" field.
  String? _cidadefarmacia;
  String get cidadefarmacia => _cidadefarmacia ?? '';
  set cidadefarmacia(String? val) => _cidadefarmacia = val;

  bool hasCidadefarmacia() => _cidadefarmacia != null;

  // "estadofarmacia" field.
  String? _estadofarmacia;
  String get estadofarmacia => _estadofarmacia ?? '';
  set estadofarmacia(String? val) => _estadofarmacia = val;

  bool hasEstadofarmacia() => _estadofarmacia != null;

  // "farmaciaid" field.
  int? _farmaciaid;
  int get farmaciaid => _farmaciaid ?? 0;
  set farmaciaid(int? val) => _farmaciaid = val;

  void incrementFarmaciaid(int amount) => farmaciaid = farmaciaid + amount;

  bool hasFarmaciaid() => _farmaciaid != null;

  static MedicamentosStruct fromMap(Map<String, dynamic> data) =>
      MedicamentosStruct(
        identificador: castToType<int>(data['identificador']),
        farmacia: data['farmacia'] as String?,
        principioativo: data['principioativo'] as String?,
        tipomedicamento: data['tipomedicamento'] as String?,
        caixasdisponiveis: castToType<int>(data['caixasdisponiveis']),
        quantidadeporcaixa: castToType<int>(data['quantidadeporcaixa']),
        concentracaomedicamento:
            castToType<int>(data['concentracaomedicamento']),
        unidademedconcent: data['unidademedconcent'] as String?,
        labmedicamento: data['labmedicamento'] as String?,
        vencimento: data['vencimento'] as DateTime?,
        foto: data['foto'] as String?,
        metodo: data['metodo'] as String?,
        bairrofarmacia: data['bairrofarmacia'] as String?,
        cidadefarmacia: data['cidadefarmacia'] as String?,
        estadofarmacia: data['estadofarmacia'] as String?,
        farmaciaid: castToType<int>(data['farmaciaid']),
      );

  static MedicamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? MedicamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identificador': _identificador,
        'farmacia': _farmacia,
        'principioativo': _principioativo,
        'tipomedicamento': _tipomedicamento,
        'caixasdisponiveis': _caixasdisponiveis,
        'quantidadeporcaixa': _quantidadeporcaixa,
        'concentracaomedicamento': _concentracaomedicamento,
        'unidademedconcent': _unidademedconcent,
        'labmedicamento': _labmedicamento,
        'vencimento': _vencimento,
        'foto': _foto,
        'metodo': _metodo,
        'bairrofarmacia': _bairrofarmacia,
        'cidadefarmacia': _cidadefarmacia,
        'estadofarmacia': _estadofarmacia,
        'farmaciaid': _farmaciaid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identificador': serializeParam(
          _identificador,
          ParamType.int,
        ),
        'farmacia': serializeParam(
          _farmacia,
          ParamType.String,
        ),
        'principioativo': serializeParam(
          _principioativo,
          ParamType.String,
        ),
        'tipomedicamento': serializeParam(
          _tipomedicamento,
          ParamType.String,
        ),
        'caixasdisponiveis': serializeParam(
          _caixasdisponiveis,
          ParamType.int,
        ),
        'quantidadeporcaixa': serializeParam(
          _quantidadeporcaixa,
          ParamType.int,
        ),
        'concentracaomedicamento': serializeParam(
          _concentracaomedicamento,
          ParamType.int,
        ),
        'unidademedconcent': serializeParam(
          _unidademedconcent,
          ParamType.String,
        ),
        'labmedicamento': serializeParam(
          _labmedicamento,
          ParamType.String,
        ),
        'vencimento': serializeParam(
          _vencimento,
          ParamType.DateTime,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'metodo': serializeParam(
          _metodo,
          ParamType.String,
        ),
        'bairrofarmacia': serializeParam(
          _bairrofarmacia,
          ParamType.String,
        ),
        'cidadefarmacia': serializeParam(
          _cidadefarmacia,
          ParamType.String,
        ),
        'estadofarmacia': serializeParam(
          _estadofarmacia,
          ParamType.String,
        ),
        'farmaciaid': serializeParam(
          _farmaciaid,
          ParamType.int,
        ),
      }.withoutNulls;

  static MedicamentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicamentosStruct(
        identificador: deserializeParam(
          data['identificador'],
          ParamType.int,
          false,
        ),
        farmacia: deserializeParam(
          data['farmacia'],
          ParamType.String,
          false,
        ),
        principioativo: deserializeParam(
          data['principioativo'],
          ParamType.String,
          false,
        ),
        tipomedicamento: deserializeParam(
          data['tipomedicamento'],
          ParamType.String,
          false,
        ),
        caixasdisponiveis: deserializeParam(
          data['caixasdisponiveis'],
          ParamType.int,
          false,
        ),
        quantidadeporcaixa: deserializeParam(
          data['quantidadeporcaixa'],
          ParamType.int,
          false,
        ),
        concentracaomedicamento: deserializeParam(
          data['concentracaomedicamento'],
          ParamType.int,
          false,
        ),
        unidademedconcent: deserializeParam(
          data['unidademedconcent'],
          ParamType.String,
          false,
        ),
        labmedicamento: deserializeParam(
          data['labmedicamento'],
          ParamType.String,
          false,
        ),
        vencimento: deserializeParam(
          data['vencimento'],
          ParamType.DateTime,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        metodo: deserializeParam(
          data['metodo'],
          ParamType.String,
          false,
        ),
        bairrofarmacia: deserializeParam(
          data['bairrofarmacia'],
          ParamType.String,
          false,
        ),
        cidadefarmacia: deserializeParam(
          data['cidadefarmacia'],
          ParamType.String,
          false,
        ),
        estadofarmacia: deserializeParam(
          data['estadofarmacia'],
          ParamType.String,
          false,
        ),
        farmaciaid: deserializeParam(
          data['farmaciaid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MedicamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicamentosStruct &&
        identificador == other.identificador &&
        farmacia == other.farmacia &&
        principioativo == other.principioativo &&
        tipomedicamento == other.tipomedicamento &&
        caixasdisponiveis == other.caixasdisponiveis &&
        quantidadeporcaixa == other.quantidadeporcaixa &&
        concentracaomedicamento == other.concentracaomedicamento &&
        unidademedconcent == other.unidademedconcent &&
        labmedicamento == other.labmedicamento &&
        vencimento == other.vencimento &&
        foto == other.foto &&
        metodo == other.metodo &&
        bairrofarmacia == other.bairrofarmacia &&
        cidadefarmacia == other.cidadefarmacia &&
        estadofarmacia == other.estadofarmacia &&
        farmaciaid == other.farmaciaid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        identificador,
        farmacia,
        principioativo,
        tipomedicamento,
        caixasdisponiveis,
        quantidadeporcaixa,
        concentracaomedicamento,
        unidademedconcent,
        labmedicamento,
        vencimento,
        foto,
        metodo,
        bairrofarmacia,
        cidadefarmacia,
        estadofarmacia,
        farmaciaid
      ]);
}

MedicamentosStruct createMedicamentosStruct({
  int? identificador,
  String? farmacia,
  String? principioativo,
  String? tipomedicamento,
  int? caixasdisponiveis,
  int? quantidadeporcaixa,
  int? concentracaomedicamento,
  String? unidademedconcent,
  String? labmedicamento,
  DateTime? vencimento,
  String? foto,
  String? metodo,
  String? bairrofarmacia,
  String? cidadefarmacia,
  String? estadofarmacia,
  int? farmaciaid,
}) =>
    MedicamentosStruct(
      identificador: identificador,
      farmacia: farmacia,
      principioativo: principioativo,
      tipomedicamento: tipomedicamento,
      caixasdisponiveis: caixasdisponiveis,
      quantidadeporcaixa: quantidadeporcaixa,
      concentracaomedicamento: concentracaomedicamento,
      unidademedconcent: unidademedconcent,
      labmedicamento: labmedicamento,
      vencimento: vencimento,
      foto: foto,
      metodo: metodo,
      bairrofarmacia: bairrofarmacia,
      cidadefarmacia: cidadefarmacia,
      estadofarmacia: estadofarmacia,
      farmaciaid: farmaciaid,
    );
