import '../database.dart';

class MedicamentosTable extends SupabaseTable<MedicamentosRow> {
  @override
  String get tableName => 'medicamentos';

  @override
  MedicamentosRow createRow(Map<String, dynamic> data) => MedicamentosRow(data);
}

class MedicamentosRow extends SupabaseDataRow {
  MedicamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get princAtivo => getField<String>('princ_ativo')!;
  set princAtivo(String value) => setField<String>('princ_ativo', value);

  int get caixas => getField<int>('caixas')!;
  set caixas(int value) => setField<int>('caixas', value);

  int get qtdporcaixa => getField<int>('qtdporcaixa')!;
  set qtdporcaixa(int value) => setField<int>('qtdporcaixa', value);

  String get laboratorio => getField<String>('laboratorio')!;
  set laboratorio(String value) => setField<String>('laboratorio', value);

  DateTime get validade => getField<DateTime>('validade')!;
  set validade(DateTime value) => setField<DateTime>('validade', value);

  String get imagem => getField<String>('imagem')!;
  set imagem(String value) => setField<String>('imagem', value);

  String get uuidfarmacia => getField<String>('uuidfarmacia')!;
  set uuidfarmacia(String value) => setField<String>('uuidfarmacia', value);

  int get cidade => getField<int>('cidade')!;
  set cidade(int value) => setField<int>('cidade', value);

  int get administracao => getField<int>('administracao')!;
  set administracao(int value) => setField<int>('administracao', value);

  int get categoria => getField<int>('categoria')!;
  set categoria(int value) => setField<int>('categoria', value);

  int get concentracao => getField<int>('concentracao')!;
  set concentracao(int value) => setField<int>('concentracao', value);

  double get grandezaconcentracao => getField<double>('grandezaconcentracao')!;
  set grandezaconcentracao(double value) =>
      setField<double>('grandezaconcentracao', value);

  String get designacao => getField<String>('designacao')!;
  set designacao(String value) => setField<String>('designacao', value);

  String get tipomedicacao => getField<String>('tipomedicacao')!;
  set tipomedicacao(String value) => setField<String>('tipomedicacao', value);

  String? get lote => getField<String>('lote');
  set lote(String? value) => setField<String>('lote', value);
}
