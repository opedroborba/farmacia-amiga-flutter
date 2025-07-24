import '../database.dart';

class FrequenciaTable extends SupabaseTable<FrequenciaRow> {
  @override
  String get tableName => 'frequencia';

  @override
  FrequenciaRow createRow(Map<String, dynamic> data) => FrequenciaRow(data);
}

class FrequenciaRow extends SupabaseDataRow {
  FrequenciaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FrequenciaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get frequencia => getField<String>('frequencia')!;
  set frequencia(String value) => setField<String>('frequencia', value);
}
