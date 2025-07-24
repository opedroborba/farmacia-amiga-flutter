// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    String? type,
    AttributesStruct? attributes,
    LinksStruct? links,
    int? id,
  })  : _type = type,
        _attributes = attributes,
        _links = links,
        _id = id;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "attributes" field.
  AttributesStruct? _attributes;
  AttributesStruct get attributes => _attributes ?? AttributesStruct();
  set attributes(AttributesStruct? val) => _attributes = val;

  void updateAttributes(Function(AttributesStruct) updateFn) {
    updateFn(_attributes ??= AttributesStruct());
  }

  bool hasAttributes() => _attributes != null;

  // "links" field.
  LinksStruct? _links;
  LinksStruct get links => _links ?? LinksStruct();
  set links(LinksStruct? val) => _links = val;

  void updateLinks(Function(LinksStruct) updateFn) {
    updateFn(_links ??= LinksStruct());
  }

  bool hasLinks() => _links != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        type: data['type'] as String?,
        attributes: data['attributes'] is AttributesStruct
            ? data['attributes']
            : AttributesStruct.maybeFromMap(data['attributes']),
        links: data['links'] is LinksStruct
            ? data['links']
            : LinksStruct.maybeFromMap(data['links']),
        id: castToType<int>(data['id']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'attributes': _attributes?.toMap(),
        'links': _links?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'attributes': serializeParam(
          _attributes,
          ParamType.DataStruct,
        ),
        'links': serializeParam(
          _links,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        attributes: deserializeStructParam(
          data['attributes'],
          ParamType.DataStruct,
          false,
          structBuilder: AttributesStruct.fromSerializableMap,
        ),
        links: deserializeStructParam(
          data['links'],
          ParamType.DataStruct,
          false,
          structBuilder: LinksStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        type == other.type &&
        attributes == other.attributes &&
        links == other.links &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([type, attributes, links, id]);
}

DataStruct createDataStruct({
  String? type,
  AttributesStruct? attributes,
  LinksStruct? links,
  int? id,
}) =>
    DataStruct(
      type: type,
      attributes: attributes ?? AttributesStruct(),
      links: links ?? LinksStruct(),
      id: id,
    );
