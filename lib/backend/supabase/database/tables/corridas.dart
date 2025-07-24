import '../database.dart';

class CorridasTable extends SupabaseTable<CorridasRow> {
  @override
  String get tableName => 'corridas';

  @override
  CorridasRow createRow(Map<String, dynamic> data) => CorridasRow(data);
}

class CorridasRow extends SupabaseDataRow {
  CorridasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CorridasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get datacriacao => getField<DateTime>('datacriacao')!;
  set datacriacao(DateTime value) => setField<DateTime>('datacriacao', value);

  String? get uuidentregador => getField<String>('uuidentregador');
  set uuidentregador(String? value) =>
      setField<String>('uuidentregador', value);

  String get uuidfarmacia => getField<String>('uuidfarmacia')!;
  set uuidfarmacia(String value) => setField<String>('uuidfarmacia', value);

  String get uuidmedico => getField<String>('uuidmedico')!;
  set uuidmedico(String value) => setField<String>('uuidmedico', value);

  String get uuidpaciente => getField<String>('uuidpaciente')!;
  set uuidpaciente(String value) => setField<String>('uuidpaciente', value);

  int get idreceita => getField<int>('idreceita')!;
  set idreceita(int value) => setField<int>('idreceita', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
