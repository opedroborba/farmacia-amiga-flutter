// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosUsuarioStruct extends BaseStruct {
  DadosUsuarioStruct({
    int? identificador,
    String? tipo,
    String? name,
    String? city,
    String? state,
  })  : _identificador = identificador,
        _tipo = tipo,
        _name = name,
        _city = city,
        _state = state;

  // "identificador" field.
  int? _identificador;
  int get identificador => _identificador ?? 0;
  set identificador(int? val) => _identificador = val;

  void incrementIdentificador(int amount) =>
      identificador = identificador + amount;

  bool hasIdentificador() => _identificador != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static DadosUsuarioStruct fromMap(Map<String, dynamic> data) =>
      DadosUsuarioStruct(
        identificador: castToType<int>(data['identificador']),
        tipo: data['tipo'] as String?,
        name: data['name'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
      );

  static DadosUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identificador': _identificador,
        'tipo': _tipo,
        'name': _name,
        'city': _city,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identificador': serializeParam(
          _identificador,
          ParamType.int,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosUsuarioStruct(
        identificador: deserializeParam(
          data['identificador'],
          ParamType.int,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosUsuarioStruct &&
        identificador == other.identificador &&
        tipo == other.tipo &&
        name == other.name &&
        city == other.city &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([identificador, tipo, name, city, state]);
}

DadosUsuarioStruct createDadosUsuarioStruct({
  int? identificador,
  String? tipo,
  String? name,
  String? city,
  String? state,
}) =>
    DadosUsuarioStruct(
      identificador: identificador,
      tipo: tipo,
      name: name,
      city: city,
      state: state,
    );
