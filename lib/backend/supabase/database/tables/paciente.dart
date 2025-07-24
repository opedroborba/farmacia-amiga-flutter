import '../database.dart';

class PacienteTable extends SupabaseTable<PacienteRow> {
  @override
  String get tableName => 'paciente';

  @override
  PacienteRow createRow(Map<String, dynamic> data) => PacienteRow(data);
}

class PacienteRow extends SupabaseDataRow {
  PacienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataNascimento => getField<DateTime>('data_nascimento')!;
  set dataNascimento(DateTime value) =>
      setField<DateTime>('data_nascimento', value);

  String get cpf => getField<String>('cpf')!;
  set cpf(String value) => setField<String>('cpf', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String get cep => getField<String>('cep')!;
  set cep(String value) => setField<String>('cep', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  int get cidade => getField<int>('cidade')!;
  set cidade(int value) => setField<int>('cidade', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);
}
