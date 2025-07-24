import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _perfil = prefs.getString('ff_perfil') ?? _perfil;
    });
    _safeInit(() {
      _receitaid = prefs.getInt('ff_receitaid') ?? _receitaid;
    });
    _safeInit(() {
      _idpaciente = prefs.getInt('ff_idpaciente') ?? _idpaciente;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_dadosUsuario')) {
        try {
          final serializedData = prefs.getString('ff_dadosUsuario') ?? '{}';
          _dadosUsuario = DadosUsuarioStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _idusuariocadastro =
          prefs.getInt('ff_idusuariocadastro') ?? _idusuariocadastro;
    });
    _safeInit(() {
      _nomepaciente = prefs.getString('ff_nomepaciente') ?? _nomepaciente;
    });
    _safeInit(() {
      _cpfpaciente = prefs.getString('ff_cpfpaciente') ?? _cpfpaciente;
    });
    _safeInit(() {
      _pacienteid = prefs.getInt('ff_pacienteid') ?? _pacienteid;
    });
    _safeInit(() {
      _medicoid = prefs.getInt('ff_medicoid') ?? _medicoid;
    });
    _safeInit(() {
      _farmaciaid = prefs.getInt('ff_farmaciaid') ?? _farmaciaid;
    });
    _safeInit(() {
      _clientid = prefs.getString('ff_clientid') ?? _clientid;
    });
    _safeInit(() {
      _clientsecret = prefs.getString('ff_clientsecret') ?? _clientsecret;
    });
    _safeInit(() {
      _cidade = prefs.getInt('ff_cidade') ?? _cidade;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_receita')) {
        try {
          final serializedData = prefs.getString('ff_receita') ?? '{}';
          _receita = ListaReceitasMedicoStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _itensreceitaApp = prefs
              .getStringList('ff_itensreceitaApp')
              ?.map((x) {
                try {
                  return ItensreceitaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _itensreceitaApp;
    });
    _safeInit(() {
      _codigounicomedico =
          prefs.getString('ff_codigounicomedico') ?? _codigounicomedico;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _perfil = '';
  String get perfil => _perfil;
  set perfil(String value) {
    _perfil = value;
    prefs.setString('ff_perfil', value);
  }

  int _receitaid = 0;
  int get receitaid => _receitaid;
  set receitaid(int value) {
    _receitaid = value;
    prefs.setInt('ff_receitaid', value);
  }

  int _idpaciente = 0;
  int get idpaciente => _idpaciente;
  set idpaciente(int value) {
    _idpaciente = value;
    prefs.setInt('ff_idpaciente', value);
  }

  DadosUsuarioStruct _dadosUsuario = DadosUsuarioStruct();
  DadosUsuarioStruct get dadosUsuario => _dadosUsuario;
  set dadosUsuario(DadosUsuarioStruct value) {
    _dadosUsuario = value;
    prefs.setString('ff_dadosUsuario', value.serialize());
  }

  void updateDadosUsuarioStruct(Function(DadosUsuarioStruct) updateFn) {
    updateFn(_dadosUsuario);
    prefs.setString('ff_dadosUsuario', _dadosUsuario.serialize());
  }

  int _idusuariocadastro = 0;
  int get idusuariocadastro => _idusuariocadastro;
  set idusuariocadastro(int value) {
    _idusuariocadastro = value;
    prefs.setInt('ff_idusuariocadastro', value);
  }

  String _nomepaciente = '';
  String get nomepaciente => _nomepaciente;
  set nomepaciente(String value) {
    _nomepaciente = value;
    prefs.setString('ff_nomepaciente', value);
  }

  String _cpfpaciente = '';
  String get cpfpaciente => _cpfpaciente;
  set cpfpaciente(String value) {
    _cpfpaciente = value;
    prefs.setString('ff_cpfpaciente', value);
  }

  int _pacienteid = 0;
  int get pacienteid => _pacienteid;
  set pacienteid(int value) {
    _pacienteid = value;
    prefs.setInt('ff_pacienteid', value);
  }

  int _medicoid = 0;
  int get medicoid => _medicoid;
  set medicoid(int value) {
    _medicoid = value;
    prefs.setInt('ff_medicoid', value);
  }

  int _farmaciaid = 0;
  int get farmaciaid => _farmaciaid;
  set farmaciaid(int value) {
    _farmaciaid = value;
    prefs.setInt('ff_farmaciaid', value);
  }

  String _clientid = '';
  String get clientid => _clientid;
  set clientid(String value) {
    _clientid = value;
    prefs.setString('ff_clientid', value);
  }

  String _clientsecret = '';
  String get clientsecret => _clientsecret;
  set clientsecret(String value) {
    _clientsecret = value;
    prefs.setString('ff_clientsecret', value);
  }

  int _cidade = 0;
  int get cidade => _cidade;
  set cidade(int value) {
    _cidade = value;
    prefs.setInt('ff_cidade', value);
  }

  ListaReceitasMedicoStruct _receita = ListaReceitasMedicoStruct();
  ListaReceitasMedicoStruct get receita => _receita;
  set receita(ListaReceitasMedicoStruct value) {
    _receita = value;
    prefs.setString('ff_receita', value.serialize());
  }

  void updateReceitaStruct(Function(ListaReceitasMedicoStruct) updateFn) {
    updateFn(_receita);
    prefs.setString('ff_receita', _receita.serialize());
  }

  List<ItensreceitaStruct> _itensreceitaApp = [];
  List<ItensreceitaStruct> get itensreceitaApp => _itensreceitaApp;
  set itensreceitaApp(List<ItensreceitaStruct> value) {
    _itensreceitaApp = value;
    prefs.setStringList(
        'ff_itensreceitaApp', value.map((x) => x.serialize()).toList());
  }

  void addToItensreceitaApp(ItensreceitaStruct value) {
    itensreceitaApp.add(value);
    prefs.setStringList('ff_itensreceitaApp',
        _itensreceitaApp.map((x) => x.serialize()).toList());
  }

  void removeFromItensreceitaApp(ItensreceitaStruct value) {
    itensreceitaApp.remove(value);
    prefs.setStringList('ff_itensreceitaApp',
        _itensreceitaApp.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromItensreceitaApp(int index) {
    itensreceitaApp.removeAt(index);
    prefs.setStringList('ff_itensreceitaApp',
        _itensreceitaApp.map((x) => x.serialize()).toList());
  }

  void updateItensreceitaAppAtIndex(
    int index,
    ItensreceitaStruct Function(ItensreceitaStruct) updateFn,
  ) {
    itensreceitaApp[index] = updateFn(_itensreceitaApp[index]);
    prefs.setStringList('ff_itensreceitaApp',
        _itensreceitaApp.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInItensreceitaApp(int index, ItensreceitaStruct value) {
    itensreceitaApp.insert(index, value);
    prefs.setStringList('ff_itensreceitaApp',
        _itensreceitaApp.map((x) => x.serialize()).toList());
  }

  List<String> _designacao = ['Ético/Referência', 'Genérico', 'Similar'];
  List<String> get designacao => _designacao;
  set designacao(List<String> value) {
    _designacao = value;
  }

  void addToDesignacao(String value) {
    designacao.add(value);
  }

  void removeFromDesignacao(String value) {
    designacao.remove(value);
  }

  void removeAtIndexFromDesignacao(int index) {
    designacao.removeAt(index);
  }

  void updateDesignacaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    designacao[index] = updateFn(_designacao[index]);
  }

  void insertAtIndexInDesignacao(int index, String value) {
    designacao.insert(index, value);
  }

  List<String> _frequencia = ['dia(s)', 'hora(s)', 'semana(s)', 'mes(es)'];
  List<String> get frequencia => _frequencia;
  set frequencia(List<String> value) {
    _frequencia = value;
  }

  void addToFrequencia(String value) {
    frequencia.add(value);
  }

  void removeFromFrequencia(String value) {
    frequencia.remove(value);
  }

  void removeAtIndexFromFrequencia(int index) {
    frequencia.removeAt(index);
  }

  void updateFrequenciaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    frequencia[index] = updateFn(_frequencia[index]);
  }

  void insertAtIndexInFrequencia(int index, String value) {
    frequencia.insert(index, value);
  }

  /// Tipos de comercialização de medicação
  List<String> _comercializacao = [
    'Adesivo transdérmico',
    'Ampola',
    'Ampola para nebulização',
    'Caneta injetora',
    'Cápsula',
    'Colírio',
    'Comprimido',
    'Creme',
    'Drágea',
    'Elixir',
    'Frasco para infusão',
    'Frasco-ampola',
    'Gel',
    'Gotas',
    'Granulado',
    'Implante sucutâneo',
    'Inalador (DPI)',
    'Loção',
    'Óvulo vaginal',
    'Pomada',
    'Pomada oftálmica',
    'Pó para reconstituição oral',
    'Spray',
    'Spray nasal',
    'Seringa preenchida (seringa pré-enchida)',
    'Solução',
    'Solução tópica',
    'Supositório',
    'Suspensão',
    'Tablete bucal',
    'Tintura',
    'Xarope'
  ];
  List<String> get comercializacao => _comercializacao;
  set comercializacao(List<String> value) {
    _comercializacao = value;
  }

  void addToComercializacao(String value) {
    comercializacao.add(value);
  }

  void removeFromComercializacao(String value) {
    comercializacao.remove(value);
  }

  void removeAtIndexFromComercializacao(int index) {
    comercializacao.removeAt(index);
  }

  void updateComercializacaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    comercializacao[index] = updateFn(_comercializacao[index]);
  }

  void insertAtIndexInComercializacao(int index, String value) {
    comercializacao.insert(index, value);
  }

  String _codigounicomedico = '';
  String get codigounicomedico => _codigounicomedico;
  set codigounicomedico(String value) {
    _codigounicomedico = value;
    prefs.setString('ff_codigounicomedico', value);
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
