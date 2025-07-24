import '../database.dart';

class ReceitasTable extends SupabaseTable<ReceitasRow> {
  @override
  String get tableName => 'receitas';

  @override
  ReceitasRow createRow(Map<String, dynamic> data) => ReceitasRow(data);
}

class ReceitasRow extends SupabaseDataRow {
  ReceitasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get chavereceita => getField<String>('chavereceita')!;
  set chavereceita(String value) => setField<String>('chavereceita', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  String get uuidpaciente => getField<String>('uuidpaciente')!;
  set uuidpaciente(String value) => setField<String>('uuidpaciente', value);

  String get uuidmedico => getField<String>('uuidmedico')!;
  set uuidmedico(String value) => setField<String>('uuidmedico', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get receita => getField<String>('receita');
  set receita(String? value) => setField<String>('receita', value);

  String? get uuidfarmacia => getField<String>('uuidfarmacia');
  set uuidfarmacia(String? value) => setField<String>('uuidfarmacia', value);

  bool get farmreceb => getField<bool>('farmreceb')!;
  set farmreceb(bool value) => setField<bool>('farmreceb', value);
}
