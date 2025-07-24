import '../database.dart';

class MedicosTable extends SupabaseTable<MedicosRow> {
  @override
  String get tableName => 'medicos';

  @override
  MedicosRow createRow(Map<String, dynamic> data) => MedicosRow(data);
}

class MedicosRow extends SupabaseDataRow {
  MedicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get crm => getField<String>('crm')!;
  set crm(String value) => setField<String>('crm', value);

  String get especialidade => getField<String>('especialidade')!;
  set especialidade(String value) => setField<String>('especialidade', value);

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

  String get crmnum => getField<String>('crmnum')!;
  set crmnum(String value) => setField<String>('crmnum', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);
}
