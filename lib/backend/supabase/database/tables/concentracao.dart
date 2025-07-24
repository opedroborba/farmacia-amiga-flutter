import '../database.dart';

class ConcentracaoTable extends SupabaseTable<ConcentracaoRow> {
  @override
  String get tableName => 'concentracao';

  @override
  ConcentracaoRow createRow(Map<String, dynamic> data) => ConcentracaoRow(data);
}

class ConcentracaoRow extends SupabaseDataRow {
  ConcentracaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConcentracaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get tipoconcentracao => getField<String>('tipoconcentracao')!;
  set tipoconcentracao(String value) =>
      setField<String>('tipoconcentracao', value);
}
