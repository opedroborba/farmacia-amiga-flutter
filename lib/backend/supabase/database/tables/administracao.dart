import '../database.dart';

class AdministracaoTable extends SupabaseTable<AdministracaoRow> {
  @override
  String get tableName => 'administracao';

  @override
  AdministracaoRow createRow(Map<String, dynamic> data) =>
      AdministracaoRow(data);
}

class AdministracaoRow extends SupabaseDataRow {
  AdministracaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdministracaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String get administracao => getField<String>('administracao')!;
  set administracao(String value) => setField<String>('administracao', value);
}
