import '../database.dart';

class LogTable extends SupabaseTable<LogRow> {
  @override
  String get tableName => 'log';

  @override
  LogRow createRow(Map<String, dynamic> data) => LogRow(data);
}

class LogRow extends SupabaseDataRow {
  LogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);
}
