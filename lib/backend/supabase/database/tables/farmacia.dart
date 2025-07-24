import '../database.dart';

class FarmaciaTable extends SupabaseTable<FarmaciaRow> {
  @override
  String get tableName => 'farmacia';

  @override
  FarmaciaRow createRow(Map<String, dynamic> data) => FarmaciaRow(data);
}

class FarmaciaRow extends SupabaseDataRow {
  FarmaciaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmaciaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get cnpj => getField<String>('cnpj')!;
  set cnpj(String value) => setField<String>('cnpj', value);

  String get telefone => getField<String>('telefone')!;
  set telefone(String value) => setField<String>('telefone', value);

  String get rua => getField<String>('rua')!;
  set rua(String value) => setField<String>('rua', value);

  String get numero => getField<String>('numero')!;
  set numero(String value) => setField<String>('numero', value);

  String get complemento => getField<String>('complemento')!;
  set complemento(String value) => setField<String>('complemento', value);

  String get bairro => getField<String>('bairro')!;
  set bairro(String value) => setField<String>('bairro', value);

  String get cep => getField<String>('cep')!;
  set cep(String value) => setField<String>('cep', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  int get cidade => getField<int>('cidade')!;
  set cidade(int value) => setField<int>('cidade', value);
}
