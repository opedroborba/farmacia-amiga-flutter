import '../database.dart';

class FuncaoTable extends SupabaseTable<FuncaoRow> {
  @override
  String get tableName => 'funcao';

  @override
  FuncaoRow createRow(Map<String, dynamic> data) => FuncaoRow(data);
}

class FuncaoRow extends SupabaseDataRow {
  FuncaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuncaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get funcao => getField<String>('funcao')!;
  set funcao(String value) => setField<String>('funcao', value);
}
