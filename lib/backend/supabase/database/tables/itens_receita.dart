import '../database.dart';

class ItensReceitaTable extends SupabaseTable<ItensReceitaRow> {
  @override
  String get tableName => 'itens_receita';

  @override
  ItensReceitaRow createRow(Map<String, dynamic> data) => ItensReceitaRow(data);
}

class ItensReceitaRow extends SupabaseDataRow {
  ItensReceitaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItensReceitaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get caixas => getField<int>('caixas')!;
  set caixas(int value) => setField<int>('caixas', value);

  int get qtdinjestao => getField<int>('qtdinjestao')!;
  set qtdinjestao(int value) => setField<int>('qtdinjestao', value);

  String get frequencia => getField<String>('frequencia')!;
  set frequencia(String value) => setField<String>('frequencia', value);

  int? get idreceita => getField<int>('idreceita');
  set idreceita(int? value) => setField<int>('idreceita', value);

  int get idmedicamento => getField<int>('idmedicamento')!;
  set idmedicamento(int value) => setField<int>('idmedicamento', value);
}
