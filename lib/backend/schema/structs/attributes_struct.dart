// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributesStruct extends BaseStruct {
  AttributesStruct({
    String? unii,
    String? slug,
    int? base,
    String? radical,
    String? related,
    String? name,
    String? nameEn,
  })  : _unii = unii,
        _slug = slug,
        _base = base,
        _radical = radical,
        _related = related,
        _name = name,
        _nameEn = nameEn;

  // "unii" field.
  String? _unii;
  String get unii => _unii ?? '';
  set unii(String? val) => _unii = val;

  bool hasUnii() => _unii != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "base" field.
  int? _base;
  int get base => _base ?? 0;
  set base(int? val) => _base = val;

  void incrementBase(int amount) => base = base + amount;

  bool hasBase() => _base != null;

  // "radical" field.
  String? _radical;
  String get radical => _radical ?? '';
  set radical(String? val) => _radical = val;

  bool hasRadical() => _radical != null;

  // "related" field.
  String? _related;
  String get related => _related ?? '';
  set related(String? val) => _related = val;

  bool hasRelated() => _related != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  static AttributesStruct fromMap(Map<String, dynamic> data) =>
      AttributesStruct(
        unii: data['unii'] as String?,
        slug: data['slug'] as String?,
        base: castToType<int>(data['base']),
        radical: data['radical'] as String?,
        related: data['related'] as String?,
        name: data['name'] as String?,
        nameEn: data['name_en'] as String?,
      );

  static AttributesStruct? maybeFromMap(dynamic data) => data is Map
      ? AttributesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'unii': _unii,
        'slug': _slug,
        'base': _base,
        'radical': _radical,
        'related': _related,
        'name': _name,
        'name_en': _nameEn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'unii': serializeParam(
          _unii,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'base': serializeParam(
          _base,
          ParamType.int,
        ),
        'radical': serializeParam(
          _radical,
          ParamType.String,
        ),
        'related': serializeParam(
          _related,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
      }.withoutNulls;

  static AttributesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttributesStruct(
        unii: deserializeParam(
          data['unii'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        base: deserializeParam(
          data['base'],
          ParamType.int,
          false,
        ),
        radical: deserializeParam(
          data['radical'],
          ParamType.String,
          false,
        ),
        related: deserializeParam(
          data['related'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AttributesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttributesStruct &&
        unii == other.unii &&
        slug == other.slug &&
        base == other.base &&
        radical == other.radical &&
        related == other.related &&
        name == other.name &&
        nameEn == other.nameEn;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([unii, slug, base, radical, related, name, nameEn]);
}

AttributesStruct createAttributesStruct({
  String? unii,
  String? slug,
  int? base,
  String? radical,
  String? related,
  String? name,
  String? nameEn,
}) =>
    AttributesStruct(
      unii: unii,
      slug: slug,
      base: base,
      radical: radical,
      related: related,
      name: name,
      nameEn: nameEn,
    );
