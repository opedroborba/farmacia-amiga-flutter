// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinksStruct extends BaseStruct {
  LinksStruct({
    String? self,
  }) : _self = self;

  // "self" field.
  String? _self;
  String get self => _self ?? '';
  set self(String? val) => _self = val;

  bool hasSelf() => _self != null;

  static LinksStruct fromMap(Map<String, dynamic> data) => LinksStruct(
        self: data['self'] as String?,
      );

  static LinksStruct? maybeFromMap(dynamic data) =>
      data is Map ? LinksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'self': _self,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'self': serializeParam(
          _self,
          ParamType.String,
        ),
      }.withoutNulls;

  static LinksStruct fromSerializableMap(Map<String, dynamic> data) =>
      LinksStruct(
        self: deserializeParam(
          data['self'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LinksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LinksStruct && self == other.self;
  }

  @override
  int get hashCode => const ListEquality().hash([self]);
}

LinksStruct createLinksStruct({
  String? self,
}) =>
    LinksStruct(
      self: self,
    );
