import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start INTEGRACAO MEMED Group Code

class IntegracaoMemedGroup {
  static String getBaseUrl({
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) =>
      'https://integrations.api.memed.com.br/v1/';
  static Map<String, String> headers = {
    'API_KEY': '[API_KEY]',
  };
  static DadosUsuarioCall dadosUsuarioCall = DadosUsuarioCall();
  static CadastroPrescritorCall cadastroPrescritorCall =
      CadastroPrescritorCall();
  static AbasBuscaCall abasBuscaCall = AbasBuscaCall();
  static CidadesCall cidadesCall = CidadesCall();
  static EspecialidadesCall especialidadesCall = EspecialidadesCall();
  static PrescricoesCall prescricoesCall = PrescricoesCall();
  static NovaPrescricaoCall novaPrescricaoCall = NovaPrescricaoCall();
  static AutenticacaoCall autenticacaoCall = AutenticacaoCall();
}

class DadosUsuarioCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DADOS USUARIO',
      apiUrl:
          '${baseUrl}/sinapse-prescricao/usuarios/{ID_USUARIO}?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.GET,
      headers: {
        'API_KEY': '${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastroPrescritorCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? primeiroNome = '',
    String? ultimoNome = '',
    String? cpf = '',
    String? email = '',
    String? conselho = '',
    String? conselhoNumero = '',
    String? conselhoEstado = '',
    String? telefone = '',
    String? sexo = '',
    String? dataNascimento = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    final ffApiRequestBody = '''
{
  // obrigatório
  "data": {
    "type": "usuarios",
    "attributes": {
      "external_id": "${escapeStringForJson(uuid)}", // Obrigatório
      "nome": "${escapeStringForJson(primeiroNome)}", // Obrigatório
      "sobrenome": "${escapeStringForJson(ultimoNome)}", // Obrigatório
      "cpf": "${escapeStringForJson(cpf)}", // Opcional
      "board": {
            "board_code": "${escapeStringForJson(conselho)}", // Obrigatório
            "board_number": "${escapeStringForJson(conselhoNumero)}", // Obrigatório
            "board_state": "${escapeStringForJson(conselhoEstado)}"}, // Obrigatório
      "email": "${escapeStringForJson(email)}", // Opcional
      "telefone": "${escapeStringForJson(telefone)}", // Opcional
      "sexo": "${escapeStringForJson(sexo)}", // Opcional
      "data_nascimento": "${escapeStringForJson(dataNascimento)}" // Opcional
    },

    // opcional
    "relationships": {
      "cidade": {
        "data": {
          "type": "cidades", // Obrigatório
          "id": 1 // Obrigatório
        }
      },
      "especialidade": {
        "data": {
          "type": "especialidades", // Obrigatório
          "id": 1 // Obrigatório
        }
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CADASTRO PRESCRITOR',
      apiUrl:
          '${baseUrl}/sinapse-prescricao/usuarios?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.POST,
      headers: {
        'API_KEY': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AbasBuscaCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ABAS BUSCA',
      apiUrl: '${baseUrl}/medicos-configuracoes?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'API_KEY': '${apiKey}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CidadesCall {
  Future<ApiCallResponse> call({
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'CIDADES',
      apiUrl: '${baseUrl}cidades',
      callType: ApiCallType.GET,
      headers: {
        'API_KEY': '${apiKey}',
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
        'Cache-Control': 'no-cache',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? uf(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.uf''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EspecialidadesCall {
  Future<ApiCallResponse> call({
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ESPECIALIDADES',
      apiUrl: '${baseUrl}especialidades',
      callType: ApiCallType.GET,
      headers: {
        'API_KEY': '${apiKey}',
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
        'Cache-Control': 'no-cache',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? especialista(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? grupo(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PrescricoesCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'PRESCRICOES',
      apiUrl: '${baseUrl}prescricoes?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'API_KEY': '${apiKey}',
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NovaPrescricaoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? nomePaciente = '',
    String? cpf = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    final ffApiRequestBody = '''
{
  "patient": {
    "name": "${escapeStringForJson(nomePaciente)}",
    "document": "${escapeStringForJson(cpf)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NOVA PRESCRICAO',
      apiUrl: '${baseUrl}prescription/new',
      callType: ApiCallType.POST,
      headers: {
        'API_KEY': '${apiKey}',
        'Authorization': 'Bearer <token>',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AutenticacaoCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
    String? apiKey = 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
    String? secretKey =
        'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
  }) async {
    final baseUrl = IntegracaoMemedGroup.getBaseUrl(
      apiKey: apiKey,
      secretKey: secretKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'AUTENTICACAO',
      apiUrl:
          '${baseUrl}sinapse-prescricao/usuarios/${idUsuario}?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.GET,
      headers: {
        'API_KEY': '${apiKey}',
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'ID_USUARIO': idUsuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.attributes.token''',
      ));
}

/// End INTEGRACAO MEMED Group Code

/// Start MEDICOS Group Code

class MedicosGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static CMedicoCall cMedicoCall = CMedicoCall();
  static UMedicoCall uMedicoCall = UMedicoCall();
  static DMedicoCall dMedicoCall = DMedicoCall();
  static RMEDICOPorUUIDCall rMEDICOPorUUIDCall = RMEDICOPorUUIDCall();
  static RMEDICOPacientesEReceitasCall rMEDICOPacientesEReceitasCall =
      RMEDICOPacientesEReceitasCall();
}

class CMedicoCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? especial = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidmed = '',
  }) async {
    final baseUrl = MedicosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade},
  "uuidmed": "${escapeStringForJson(uuidmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C MEDICO',
      apiUrl: '${baseUrl}/c_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UMedicoCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? especial = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidmed = '',
  }) async {
    final baseUrl = MedicosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade},
  "uuidmed": "${escapeStringForJson(uuidmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'U MEDICO',
      apiUrl: '${baseUrl}/u_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DMedicoCall {
  Future<ApiCallResponse> call({
    String? idmed = '',
  }) async {
    final baseUrl = MedicosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "idmed": "${escapeStringForJson(idmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'D MEDICO',
      apiUrl: '${baseUrl}/d_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RMEDICOPorUUIDCall {
  Future<ApiCallResponse> call({
    String? emailusuario = '',
  }) async {
    final baseUrl = MedicosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R MEDICO  por UUID',
      apiUrl: '${baseUrl}r_medico',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'emailusuario': emailusuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idmed(dynamic response) => (getJsonField(
        response,
        r'''$[:].idmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? registro(dynamic response) => (getJsonField(
        response,
        r'''$[:].registro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? especial(dynamic response) => (getJsonField(
        response,
        r'''$[:].especial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? nomemedico(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomemedico''',
      ));
  String? numeroregistro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].numeroregistro''',
      ));
  int? idcidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idcidade''',
      ));
  String? uuidmed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuimed''',
      ));
}

class RMEDICOPacientesEReceitasCall {
  Future<ApiCallResponse> call({
    String? uuiduser = '',
  }) async {
    final baseUrl = MedicosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R MEDICO  pacientes e receitas',
      apiUrl: '${baseUrl}r_pacientes_medico',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'uuiduser': uuiduser,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? identificador(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].identificador''',
      ));
  String? nasc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nasc''',
      ));
  int? codcidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].codcidade''',
      ));
  String? nomepaciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomepaciente''',
      ));
  String? emailpaciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].emailpaciente''',
      ));
}

/// End MEDICOS Group Code

/// Start RECEITAS Group Code

class ReceitasGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static CItemReceitaCall cItemReceitaCall = CItemReceitaCall();
  static CReceitaCall cReceitaCall = CReceitaCall();
  static UMEDICOCopyCopyCall uMEDICOCopyCopyCall = UMEDICOCopyCopyCall();
  static DItemReceitaCall dItemReceitaCall = DItemReceitaCall();
  static RReceitasMedicoCall rReceitasMedicoCall = RReceitasMedicoCall();
  static RDadosReceitasMedicoCall rDadosReceitasMedicoCall =
      RDadosReceitasMedicoCall();
}

class CItemReceitaCall {
  Future<ApiCallResponse> call({
    int? quantidade,
    int? frequencia,
    String? mtd = '',
    int? idrec,
    int? idmed,
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "quantidade": ${quantidade},
  "frequencia": ${frequencia},
  "mtd": "${escapeStringForJson(mtd)}",
  "idrec": ${idrec},
  "idmed": ${idmed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C ITEM RECEITA',
      apiUrl: '${baseUrl}c_item_receita',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CReceitaCall {
  Future<ApiCallResponse> call({
    String? chave = '',
    String? data = '',
    String? uuidpac = '',
    String? uuidmed = '',
    String? statuspedido = '',
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "chave": "${escapeStringForJson(chave)}",
  "data": "${escapeStringForJson(data)}",
  "uuidpac": "${escapeStringForJson(uuidpac)}",
  "uuidmed": "${escapeStringForJson(uuidmed)}",
  "statuspedido": "${escapeStringForJson(statuspedido)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C  RECEITA',
      apiUrl: '${baseUrl}c_receita',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idreceita(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class UMEDICOCopyCopyCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? especial = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidmed = '',
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade},
  "uuidmed": "${escapeStringForJson(uuidmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'U MEDICO Copy Copy',
      apiUrl: '${baseUrl}/u_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DItemReceitaCall {
  Future<ApiCallResponse> call({
    int? iditem,
    int? receita,
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "iditem": ${iditem},
  "receita": ${receita}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'D ITEM RECEITA',
      apiUrl: '${baseUrl}d_item_receita',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RReceitasMedicoCall {
  Future<ApiCallResponse> call({
    String? emailusuario = '',
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R RECEITAS MEDICO',
      apiUrl: '${baseUrl}r_receita_medico',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'emailusuario': emailusuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? identificador(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].identificador''',
      ));
  String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chave''',
      ));
  String? datacriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].datacriacao''',
      ));
  String? statuspedido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].statuspedido''',
      ));
  String? uuidpaciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuidpaciente''',
      ));
  String? documento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].documento''',
      ));
}

class RDadosReceitasMedicoCall {
  Future<ApiCallResponse> call({
    String? emailusuario = '',
  }) async {
    final baseUrl = ReceitasGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R DADOS RECEITAS MEDICO',
      apiUrl: '${baseUrl}r_receitas_medico',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'emailusuario': emailusuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? princ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].princ''',
      ));
  String? lab(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].lab''',
      ));
  String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].chave''',
      ));
  int? quantidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade''',
      ));
  int? frequencia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].frequencia''',
      ));
  String? mtd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].mtd''',
      ));
  List<int>? identificador(dynamic response) => (getJsonField(
        response,
        r'''$[:].identificador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End RECEITAS Group Code

/// Start DADOS USUARIOS Group Code

class DadosUsuariosGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static CMEDICOCopyCall cMEDICOCopyCall = CMEDICOCopyCall();
  static UMEDICOCopyCall uMEDICOCopyCall = UMEDICOCopyCall();
  static RDadosPacienteCall rDadosPacienteCall = RDadosPacienteCall();
  static RUsuarioCall rUsuarioCall = RUsuarioCall();
}

class CMEDICOCopyCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? especial = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidmed = '',
  }) async {
    final baseUrl = DadosUsuariosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade},
  "uuidmed": "${escapeStringForJson(uuidmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C MEDICO Copy',
      apiUrl: '${baseUrl}/c_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UMEDICOCopyCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? especial = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidmed = '',
  }) async {
    final baseUrl = DadosUsuariosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade},
  "uuidmed": "${escapeStringForJson(uuidmed)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'U MEDICO Copy',
      apiUrl: '${baseUrl}/u_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RDadosPacienteCall {
  Future<ApiCallResponse> call({
    String? cpfusuario = '',
  }) async {
    final baseUrl = DadosUsuariosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R DADOS PACIENTE',
      apiUrl: '${baseUrl}r_paciente',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'cpfusuario': cpfusuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nomepaciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomepaciente''',
      ));
  String? cpfpaciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cpfpaciente''',
      ));
  int? cidadepaciente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cidadepaciente''',
      ));
  String? uuidpac(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuidpac''',
      ));
}

class RUsuarioCall {
  Future<ApiCallResponse> call({
    String? emailusuario = '',
  }) async {
    final baseUrl = DadosUsuariosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R USUARIO',
      apiUrl: '${baseUrl}/r_dados_usuario',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'emailusuario': emailusuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? perfil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].perfil''',
      ));
  int? idcidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idcidade''',
      ));
}

/// End DADOS USUARIOS Group Code

/// Start FARMACIA Group Code

class FarmaciaGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static CFarmaciaCall cFarmaciaCall = CFarmaciaCall();
  static UFarmaciaCall uFarmaciaCall = UFarmaciaCall();
  static DFarmaciaCall dFarmaciaCall = DFarmaciaCall();
  static RFarmaciaCall rFarmaciaCall = RFarmaciaCall();
}

class CFarmaciaCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? wpp = '',
    String? endrua = '',
    String? endnumero = '',
    String? endcompl = '',
    String? endbairro = '',
    String? endcep = '',
    String? uuidfarm = '',
    int? idcidade,
  }) async {
    final baseUrl = FarmaciaGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "registro": "${escapeStringForJson(registro)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "endrua": "${escapeStringForJson(endrua)}",
  "endnumero": "${escapeStringForJson(endnumero)}",
  "endcompl": "${escapeStringForJson(endcompl)}",
  "endbairro": "${escapeStringForJson(endbairro)}",
  "endcep": "${escapeStringForJson(endcep)}",
  "uuidfarm": "${escapeStringForJson(uuidfarm)}",
  "idcidade": ${idcidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C FARMACIA',
      apiUrl: '${baseUrl}/c_farmacia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UFarmaciaCall {
  Future<ApiCallResponse> call({
    String? registro = '',
    String? wpp = '',
    String? enderecorua = '',
    String? endereconum = '',
    String? enderecocompl = '',
    String? enderecobairro = '',
    String? enderecocep = '',
    int? codcidade,
    String? uuidfarmacia = '',
  }) async {
    final baseUrl = FarmaciaGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuidfarmacia": "${escapeStringForJson(uuidfarmacia)}",
  "registro": "${escapeStringForJson(registro)}",
  "wpp": "${escapeStringForJson(wpp)}",
  "enderecorua": "${escapeStringForJson(enderecorua)}",
  "endereconum": "${escapeStringForJson(endereconum)}",
  "enderecocompl": "${escapeStringForJson(enderecocompl)}",
  "enderecobairro": "${escapeStringForJson(enderecobairro)}",
  "enderecocep": "${escapeStringForJson(enderecocep)}",
  "codcidade": ${codcidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'U FARMACIA',
      apiUrl: '${baseUrl}/u_farmacia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DFarmaciaCall {
  Future<ApiCallResponse> call({
    String? uuidfarmacia = '',
  }) async {
    final baseUrl = FarmaciaGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuidfarmacia": "${escapeStringForJson(uuidfarmacia)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'D FARMACIA',
      apiUrl: '${baseUrl}/d_farmacia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RFarmaciaCall {
  Future<ApiCallResponse> call({
    String? uuidfarm = '',
  }) async {
    final baseUrl = FarmaciaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R FARMACIA',
      apiUrl: '${baseUrl}/r_farmacia',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'uuidfarm': uuidfarm,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nomefarmacia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomefarmacia''',
      ));
  String? emailfarmacia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].emailfarmacia''',
      ));
  String? nomecidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomecidade''',
      ));
  String? enderecorua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].enderecorua''',
      ));
  String? endereconum(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].enderecornum''',
      ));
  String? enderecocomplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].enderecocomplemento''',
      ));
  String? enderecobairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].enderecobairro''',
      ));
  String? enderecocep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].enderecocep''',
      ));
  String? uuidfarmacia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuidfarmacia''',
      ));
  int? codcidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].codcidade''',
      ));
}

/// End FARMACIA Group Code

/// Start MEDICAMENTOS Group Code

class MedicamentosGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static CMedicamentoCall cMedicamentoCall = CMedicamentoCall();
  static UMedicamentoCall uMedicamentoCall = UMedicamentoCall();
  static DMedicamentoCall dMedicamentoCall = DMedicamentoCall();
  static RMedicamentoFarmaciaCall rMedicamentoFarmaciaCall =
      RMedicamentoFarmaciaCall();
  static RMedicamentoCidadeCall rMedicamentoCidadeCall =
      RMedicamentoCidadeCall();
}

class CMedicamentoCall {
  Future<ApiCallResponse> call({
    String? princ = '',
    String? tipomed = '',
    int? cxs,
    int? qtdpcaixa,
    int? concent,
    String? unmedconc = '',
    String? lab = '',
    String? datavalid = '',
    String? mtdinjestao = '',
    String? uuidfarm = '',
    String? img = '',
    int? idcidade,
  }) async {
    final baseUrl = MedicamentosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "princ": "${escapeStringForJson(princ)}",
  "tipomed": "${escapeStringForJson(tipomed)}",
  "cxs": "${cxs}",
  "qtdpcaixa": "${qtdpcaixa}",
  "concent": "${concent}",
  "unmedconc": "${escapeStringForJson(unmedconc)}",
  "img": "${escapeStringForJson(img)}",
  "lab": "${escapeStringForJson(lab)}",
  "datavalid": "${escapeStringForJson(datavalid)}",
  "mtdinjestao": "${escapeStringForJson(mtdinjestao)}",
  "uuidfarm": "${escapeStringForJson(uuidfarm)}",
"idcidade": ${idcidade} 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'C MEDICAMENTO',
      apiUrl: '${baseUrl}/c_medicamentos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UMedicamentoCall {
  Future<ApiCallResponse> call({
    String? princ = '',
    String? tipomed = '',
    int? cxs,
    int? qtdpcaixa,
    int? concent,
    String? unmedconc = '',
    String? lab = '',
    String? datavalid = '',
    int? idmed,
    String? mtdinjestao = '',
  }) async {
    final baseUrl = MedicamentosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "princ": "${escapeStringForJson(princ)}",
  "tipomed": "${escapeStringForJson(tipomed)}",
  "cxs": ${cxs},
  "qtdpcaixa": ${qtdpcaixa},
  "concent": ${concent},
  "unmedconc": "${escapeStringForJson(unmedconc)}",
  "lab": "${escapeStringForJson(lab)}",
  "datavalid": "${escapeStringForJson(datavalid)}",
  "mtdinjestao": "${escapeStringForJson(mtdinjestao)}",
  "idmed": ${idmed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'U MEDICAMENTO',
      apiUrl: '${baseUrl}/u_medicamentos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DMedicamentoCall {
  Future<ApiCallResponse> call({
    String? uuidfarmacia = '',
  }) async {
    final baseUrl = MedicamentosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuidfarmacia": "${escapeStringForJson(uuidfarmacia)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'D MEDICAMENTO',
      apiUrl: '${baseUrl}/d_medicamentos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RMedicamentoFarmaciaCall {
  Future<ApiCallResponse> call({
    String? identificador = '',
  }) async {
    final baseUrl = MedicamentosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R MEDICAMENTO FARMACIA',
      apiUrl: '${baseUrl}r_med_farm',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'identificador': identificador,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idmedicacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].idmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? principio(dynamic response) => (getJsonField(
        response,
        r'''$[:].principio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? cxs(dynamic response) => (getJsonField(
        response,
        r'''$[:].cxs''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? qtdcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtdcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? concent(dynamic response) => (getJsonField(
        response,
        r'''$[:].concent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? unmed(dynamic response) => (getJsonField(
        response,
        r'''$[:].unmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lab(dynamic response) => (getJsonField(
        response,
        r'''$[:].lab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$[:].img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? mtdinjestao(dynamic response) => (getJsonField(
        response,
        r'''$[:].mtdinjestao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RMedicamentoCidadeCall {
  Future<ApiCallResponse> call({
    String? idcidade = '',
  }) async {
    final baseUrl = MedicamentosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R MEDICAMENTO CIDADE',
      apiUrl: '${baseUrl}r_med_cidade',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'idcidade': idcidade,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? principio(dynamic response) => (getJsonField(
        response,
        r'''$[:].principio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? cxs(dynamic response) => (getJsonField(
        response,
        r'''$[:].cxs''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? qtdcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtdcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? concent(dynamic response) => (getJsonField(
        response,
        r'''$[:].concent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? unmed(dynamic response) => (getJsonField(
        response,
        r'''$[:].unmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lab(dynamic response) => (getJsonField(
        response,
        r'''$[:].lab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$[:].img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? mtdinjestao(dynamic response) => (getJsonField(
        response,
        r'''$[:].mtdinjestao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idmedicamento(dynamic response) => (getJsonField(
        response,
        r'''$[:].idmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End MEDICAMENTOS Group Code

/// Start CIDADES E UFS Group Code

class CidadesEUfsGroup {
  static String getBaseUrl() =>
      'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
    'Content-Type': 'application/json',
  };
  static RCidadesPorNomeUfCall rCidadesPorNomeUfCall = RCidadesPorNomeUfCall();
  static RUfsCall rUfsCall = RUfsCall();
  static RIdCidadeCall rIdCidadeCall = RIdCidadeCall();
}

class RCidadesPorNomeUfCall {
  Future<ApiCallResponse> call({
    String? nomeestado = '',
  }) async {
    final baseUrl = CidadesEUfsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R CIDADES POR NOME UF',
      apiUrl: '${baseUrl}r_cidades',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'nomeestado': nomeestado,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? cidades(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomecidade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RUfsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CidadesEUfsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R UFS',
      apiUrl: '${baseUrl}r_estados',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? estados(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeestado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RIdCidadeCall {
  Future<ApiCallResponse> call({
    String? nomeestado = '',
    String? nomecidade = '',
  }) async {
    final baseUrl = CidadesEUfsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'R ID CIDADE',
      apiUrl: '${baseUrl}r_id_cidade',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {
        'nomeestado': nomeestado,
        'nomecidade': nomecidade,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idcidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idcidade''',
      ));
}

/// End CIDADES E UFS Group Code

/// Start PRODUCAO MEMED Group Code

class ProducaoMemedGroup {
  static String getBaseUrl() => 'https://api.memed.com.br/v1';
  static Map<String, String> headers = {};
  static DadosUserCall dadosUserCall = DadosUserCall();
  static CadastroPrescCall cadastroPrescCall = CadastroPrescCall();
  static BuscarCidadesCall buscarCidadesCall = BuscarCidadesCall();
  static BuscarCidadesFiltroCall buscarCidadesFiltroCall =
      BuscarCidadesFiltroCall();
  static BuscarEspecialidadesCall buscarEspecialidadesCall =
      BuscarEspecialidadesCall();
  static BuscarPrescricoesCall buscarPrescricoesCall = BuscarPrescricoesCall();
  static DeletarPrescricaoCall deletarPrescricaoCall = DeletarPrescricaoCall();
  static ConsultarPrincipioAtivoCall consultarPrincipioAtivoCall =
      ConsultarPrincipioAtivoCall();
  static RecuperarReceitaDigitalCall recuperarReceitaDigitalCall =
      RecuperarReceitaDigitalCall();
  static PdfPrescricaoCall pdfPrescricaoCall = PdfPrescricaoCall();
  static CadastroMedicamentoCall cadastroMedicamentoCall =
      CadastroMedicamentoCall();
  static ProtocoloTratamentoCall protocoloTratamentoCall =
      ProtocoloTratamentoCall();
  static RecuperarProtocoloCall recuperarProtocoloCall =
      RecuperarProtocoloCall();
  static CriarProtocoloPadraoCall criarProtocoloPadraoCall =
      CriarProtocoloPadraoCall();
  static BuscarTodosProtocolosCall buscarTodosProtocolosCall =
      BuscarTodosProtocolosCall();
  static CadastrarMultiProtocolosCall cadastrarMultiProtocolosCall =
      CadastrarMultiProtocolosCall();
  static ImpressaoCall impressaoCall = ImpressaoCall();
  static RecuperarConfigReceituarioCall recuperarConfigReceituarioCall =
      RecuperarConfigReceituarioCall();
}

class DadosUserCall {
  Future<ApiCallResponse> call({
    String? apiKey =
        '7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
    String? secretKey =
        '2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
    String? idUsuario = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'dadosUser',
      apiUrl:
          '${baseUrl}/sinapse-prescricao/usuarios/${idUsuario}?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json',
      },
      params: {
        'API_KEY': apiKey,
        'SECRET_KEY': secretKey,
        'ID_USUARIO': idUsuario,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.attributes.token''',
      ));
}

class CadastroPrescCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? primeiroNome = '',
    String? ultimoNome = '',
    String? cpf = '',
    String? email = '',
    String? conselho = '',
    String? conselhoNumero = '',
    String? conselhoEstado = '',
    String? telefone = '',
    String? sexo = '',
    String? dataNascimento = '',
    String? apiKey =
        '7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
    String? secretKey =
        '2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "data": {
    "type": "usuarios",
    "attributes": {
      "external_id": "${escapeStringForJson(uuid)}",
      "nome": "${escapeStringForJson(primeiroNome)}",
      "sobrenome": "${escapeStringForJson(ultimoNome)}",
      "cpf": "${escapeStringForJson(cpf)}",
      "board": {
        "board_code": "${escapeStringForJson(conselho)}",
        "board_number": "${escapeStringForJson(conselhoNumero)}",
        "board_state": "${escapeStringForJson(conselhoEstado)}"
      },
      "email": "${escapeStringForJson(email)}",
      "telefone": "${escapeStringForJson(telefone)}",
      "sexo": "${escapeStringForJson(sexo)}",
      "data_nascimento": "${escapeStringForJson(dataNascimento)}"
    },
    "relationships": {
      "cidade": {
        "data": {
          "type": "cidades",
          "id": 1
        }
      },
      "especialidade": {
        "data": {
          "type": "especialidades",
          "id": 1
        }
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroPresc',
      apiUrl:
          '${baseUrl}/sinapse-prescricao/usuarios?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarCidadesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscarCidades',
      apiUrl: '${baseUrl}/cidades',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? uf(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.uf''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuscarCidadesFiltroCall {
  Future<ApiCallResponse> call({
    String? cidade = '',
    String? estado = 'filtro[q]',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscarCidades Filtro',
      apiUrl: '${baseUrl}/cidades',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json',
      },
      params: {
        'filter[q]': cidade,
        'filter[uf]': estado,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? uf(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.uf''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuscarEspecialidadesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscarEspecialidades',
      apiUrl: '${baseUrl}/especialidades',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? especialidade(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscarPrescricoesCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscarPrescricoes',
      apiUrl: '${baseUrl}/prescricoes?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarPrescricaoCall {
  Future<ApiCallResponse> call({
    String? idPrescription = '',
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletarPrescricao',
      apiUrl: '${baseUrl}/prescricoes/${idPrescription}?token=${userToken}',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'id_prescription': idPrescription,
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultarPrincipioAtivoCall {
  Future<ApiCallResponse> call({
    String? apiKey =
        '7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
    String? secretKey =
        '2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
    String? field = '',
    String? sort = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'consultarPrincipioAtivo',
      apiUrl:
          '${baseUrl}/drugs/ingredients?api-key=${apiKey}&secret-key=${secretKey}&terms=dipirona&limit=10&order${field}=name&order${sort}=ASC',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'API_KEY': apiKey,
        'SECRET_KEY': secretKey,
        'field': field,
        'sort': sort,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idmedicacao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.name''',
      ));
}

class RecuperarReceitaDigitalCall {
  Future<ApiCallResponse> call({
    String? idPrescription = '',
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'recuperarReceitaDigital',
      apiUrl:
          '${baseUrl}/prescricoes/${idPrescription}/get-digital-prescription-link?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'id_prescription': idPrescription,
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PdfPrescricaoCall {
  Future<ApiCallResponse> call({
    String? idPrescription = '',
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pdfPrescricao',
      apiUrl:
          '${baseUrl}/prescricoes/${idPrescription}/url-document/full?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'id_prescription': idPrescription,
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastroMedicamentoCall {
  Future<ApiCallResponse> call({
    String? idMedicamento = '',
    String? posologia = '',
    String? nomeMedicamento = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "medicamentos": {
    "id": "${escapeStringForJson(idMedicamento)}",
    "posologia": "${escapeStringForJson(posologia)}",
    "nome": "${escapeStringForJson(nomeMedicamento)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroMedicamento',
      apiUrl: '${baseUrl}/medicamentos',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProtocoloTratamentoCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "data": {
    "type": "protocolos",
    "attributes": {
      "nome": "string",
      "medicamentos": [
        {
          "nome": "string",
          "posologia": "string",
          "quantidade": 0,
          "composicao": "string",
          "fabricante": "string",
          "titularidade": "string",
          "preco": 0
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'protocoloTratamento',
      apiUrl: '${baseUrl}/protocolos?token=${userToken}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecuperarProtocoloCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'recuperarProtocolo',
      apiUrl: '${baseUrl}/protocolos?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarProtocoloPadraoCall {
  Future<ApiCallResponse> call({
    String? apiKey =
        '7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
    String? secretKey =
        '2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
    String? nome = '',
    String? idUsuario = '',
    String? posologia = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "data": {
    "type": "protocolos",
    "attributes": {
      "nome": "${escapeStringForJson(nome)}",
      "medicamentos": [
        {
          "id": "${escapeStringForJson(idUsuario)}",
          "posologia": "${escapeStringForJson(posologia)}",
          "nome": "${escapeStringForJson(nome)}"
        },
        {
          "id": "${escapeStringForJson(idUsuario)}",
          "nome": "${escapeStringForJson(nome)}"
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarProtocoloPadrao',
      apiUrl:
          '${baseUrl}/protocolos/parceiros?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarTodosProtocolosCall {
  Future<ApiCallResponse> call({
    String? apiKey =
        '7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
    String? secretKey =
        '2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscarTodosProtocolos',
      apiUrl:
          '${baseUrl}/protocolos/parceiros?api-key=${apiKey}&secret-key=${secretKey}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'API_KEY': apiKey,
        'SECRET_KEY': secretKey,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarMultiProtocolosCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "data": {
    "type": "protocolos",
    "attributes": {
      "nome": "string",
      "medicamentos": [
        {
          "nome": "string",
          "posologia": "string",
          "quantidade": 0,
          "composicao": "string",
          "fabricante": "string",
          "titularidade": "string",
          "preco": 0
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrarMultiProtocolos',
      apiUrl: '${baseUrl}/protocolos/multiplos?token=${userToken}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImpressaoCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "data": {
    "type": "configuracoes-prescricao",
    "attributes": {
      "medicos_id": 123456,
      "indice": 1,
      "mostrar_label_nome_paciente": true,
      "mostrar_label_paciente_especial": 1,
      "mostrar_data": 1,
      "mostrar_data_controle_especial": 1,
      "fonte": "Helvetica",
      "tamanho_fonte": 14,
      "espacamento": 30,
      "mostrar_unidades": true,
      "mostrar_unidades_especial": true,
      "separar_por_uso": false,
      "mostrar_nome_fabricante": true,
      "separador_uso": 0,
      "separador_medicamento": 0,
      "largura_papel": 21,
      "altura_papel": 29.7,
      "margem_esquerda": 1.5,
      "margem_direita": 1.5,
      "margem_superior": 1,
      "margem_inferior": 1,
      "titulo_fonte": "Droid Serif Italic",
      "titulo_tamanho_fonte": 22,
      "titulo": "Dr. Teste da Silva Teste",
      "titulo_cor": "#20afd6",
      "subtitulo_fonte": "Proxima Nova",
      "subtitulo_tamanho_fonte": 14,
      "subtitulo": "CRM: 12345MG - Ginecologia e obstetrícia",
      "subtitulo_cor": "#8c8c8c",
      "tamanho_cabecalho": 2,
      "rodape_fonte": "Proxima Nova",
      "rodape_tamanho_fonte": 14,
      "rodape": "",
      "rodape_cor": "#8c8c8c",
      "tamanho_rodape": 8,
      "modelo_cabecalho_rodape": 1,
      "ativo": true,
      "imprimir_controle_especial": false,
      "imprimir_controle_especial_antibioticos": true,
      "imprimir_controle_especial_c4": false,
      "imprimir_lme": false,
      "nome_medico": "Teste da Silva Teste",
      "endereco_medico": "RUA MATO GROSSO, 1100 - SANTO AGOSTINHO",
      "cidade_medico": "São Paulo - MG",
      "telefone_medico": "(11) 99999-9999",
      "mostrar_cabecalho_rodape_simples": 1,
      "modelo_rodape": 0,
      "width_logo": 0,
      "height_logo": 0,
      "mostrar_cabecalho_rodape_especial": 1,
      "logo_nome": "",
      "logo_src": "",
      "zoom_logo": 0,
      "header_image": "parceiros/templates/parceiro-template-teste-header.jpeg",
      "footer_image": "parceiros/templates/parceiro-template-teste-footer.jpeg",
      "number_of_lme_copies": 1
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'impressao',
      apiUrl: '${baseUrl}/opcoes-receituario?token=${userToken}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecuperarConfigReceituarioCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
  }) async {
    final baseUrl = ProducaoMemedGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'recuperarConfigReceituario',
      apiUrl: '${baseUrl}/opcoes-receituario?token=${userToken}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
        'Content-Type': 'application/json',
      },
      params: {
        'user_token': userToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End PRODUCAO MEMED Group Code

/// Start MdHub Group Code

class MdHubGroup {
  static String getBaseUrl() => 'https://api.memed.com.br/v1/mdhub';
  static Map<String, String> headers = {};
  static SetPatientCall setPatientCall = SetPatientCall();
  static MedicationsCall medicationsCall = MedicationsCall();
  static NewPrescriptionCall newPrescriptionCall = NewPrescriptionCall();
}

class SetPatientCall {
  Future<ApiCallResponse> call({
    String? patientId = '',
    String? nome = '',
    String? cpf = '',
    String? telefone = '',
  }) async {
    final baseUrl = MdHubGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "patientId": "${escapeStringForJson(patientId)}",
  "nome": "${escapeStringForJson(nome)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "telefone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'setPatient',
      apiUrl: '${baseUrl}/setPaciente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MedicationsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MdHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Medications',
      apiUrl: '${baseUrl}/reference/medications',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewPrescriptionCall {
  Future<ApiCallResponse> call({
    String? patientId = '',
    List<String>? medicationsList,
    String? crm = '',
  }) async {
    final baseUrl = MdHubGroup.getBaseUrl();
    final medications = _serializeList(medicationsList);

    final ffApiRequestBody = '''
{
  "patient_id": "${escapeStringForJson(patientId)}",
  "medications": "${medications}",
  "crm": "${escapeStringForJson(crm)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'newPrescription',
      apiUrl: '${baseUrl}/new-prescription',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End MdHub Group Code

class BuscaDadosMedicoCall {
  static Future<ApiCallResponse> call({
    String? useremail = '',
  }) async {
    final ffApiRequestBody = '''
{
  "useremail": "${escapeStringForJson(useremail)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Busca dados medico',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/busca_dados_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idmedico(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idmedico''',
      ));
  static int? idusuario(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarioid''',
      ));
}

class LISTAMedicacaoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LISTA medicacao',
      apiUrl: 'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/lista_med',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].identificador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomefarmacia(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? princativo(dynamic response) => (getJsonField(
        response,
        r'''$[:].principioativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipomed(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? caixas(dynamic response) => (getJsonField(
        response,
        r'''$[:].caixasdisponiveis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? qtdporcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidadeporcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? concentracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].concentracaomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? unmedconc(dynamic response) => (getJsonField(
        response,
        r'''$[:].unidademedconcent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? laboratorio(dynamic response) => (getJsonField(
        response,
        r'''$[:].labmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metodo(dynamic response) => (getJsonField(
        response,
        r'''$[:].metodo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bairrofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].bairrofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cidadefarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadefarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? estadofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].estadofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? farmaciaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmaciaid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class INSEREMedicacaoNaReceitaCall {
  static Future<ApiCallResponse> call({
    int? idrec,
    int? idrem,
    int? quantidade,
    String? frequencia = '',
    String? met = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idrec": ${idrec},
  "idrem": ${idrem},
  "quantidade": ${quantidade},
  "frequencia": "${escapeStringForJson(frequencia)}",
  "met": "${escapeStringForJson(met)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'INSERE medicacao na receita',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/insere_item_receita',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].identificador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomefarmacia(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? princativo(dynamic response) => (getJsonField(
        response,
        r'''$[:].principioativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipomed(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? caixas(dynamic response) => (getJsonField(
        response,
        r'''$[:].caixasdisponiveis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? qtdporcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidadeporcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? concentracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].concentracaomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? unmedconc(dynamic response) => (getJsonField(
        response,
        r'''$[:].unidademedconcent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? laboratorio(dynamic response) => (getJsonField(
        response,
        r'''$[:].labmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metodo(dynamic response) => (getJsonField(
        response,
        r'''$[:].metodo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bairrofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].bairrofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cidadefarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadefarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? estadofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].estadofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? farmaciaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmaciaid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CRIAReceitaCall {
  static Future<ApiCallResponse> call({
    int? idpac,
    int? idmed,
    String? chave = '',
    String? data = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idpac": ${idpac},
  "idmed": ${idmed},
  "chave": "${escapeStringForJson(chave)}",
  "data": "${escapeStringForJson(data)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CRIA receita',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/cria_receita',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idreceita(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].receita_id''',
      ));
}

class LISTAMedicacaoMedicoCall {
  static Future<ApiCallResponse> call({
    String? emailmedico = '',
  }) async {
    final ffApiRequestBody = '''
{
  "emailmedico": "${escapeStringForJson(emailmedico)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LISTA medicacao medico',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/lista_med_med',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].identificador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomefarmacia(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? princativo(dynamic response) => (getJsonField(
        response,
        r'''$[:].principioativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipomed(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? caixas(dynamic response) => (getJsonField(
        response,
        r'''$[:].caixasdisponiveis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? qtdporcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidadeporcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? concentracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].concentracaomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? unmedconc(dynamic response) => (getJsonField(
        response,
        r'''$[:].unidademedconcent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? laboratorio(dynamic response) => (getJsonField(
        response,
        r'''$[:].labmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metodo(dynamic response) => (getJsonField(
        response,
        r'''$[:].metodo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bairrofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].bairrofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cidadefarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadefarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? estadofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].estadofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? farmaciaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmaciaid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class LISTAMedicacaoFarmaciaCall {
  static Future<ApiCallResponse> call({
    String? emailfarmacia = '',
  }) async {
    final ffApiRequestBody = '''
{
  "emailfarmacia": "${escapeStringForJson(emailfarmacia)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LISTA medicacao farmacia',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/lista_med_farm',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].identificador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomefarmacia(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? princativo(dynamic response) => (getJsonField(
        response,
        r'''$[:].principioativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipomed(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? caixas(dynamic response) => (getJsonField(
        response,
        r'''$[:].caixasdisponiveis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? qtdporcaixa(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidadeporcaixa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? concentracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].concentracaomedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? unmedconc(dynamic response) => (getJsonField(
        response,
        r'''$[:].unidademedconcent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? laboratorio(dynamic response) => (getJsonField(
        response,
        r'''$[:].labmedicamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metodo(dynamic response) => (getJsonField(
        response,
        r'''$[:].metodo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bairrofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].bairrofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cidadefarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadefarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? estadofarm(dynamic response) => (getJsonField(
        response,
        r'''$[:].estadofarmacia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? farmaciaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].farmaciaid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class INSEREMedicacaoCall {
  static Future<ApiCallResponse> call({
    int? idfarmacia1,
    String? princAtivo1 = '',
    String? tipo1 = '',
    int? caixas1,
    int? qtdporcaixa1,
    int? concentracao1,
    String? unmedidaconcentracao1 = '',
    String? laboratorio1 = '',
    String? validade1 = '',
    String? imagem1 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idfarm": ${idfarmacia1},
  "princativo": "${escapeStringForJson(princAtivo1)}",
  "tipomed": "${escapeStringForJson(tipo1)}",
  "caixasdisp": ${caixas1},
  "qtdcaixa": ${qtdporcaixa1},
  "concent": ${concentracao1},
  "unmedconcent": "${escapeStringForJson(unmedidaconcentracao1)}",
  "lab": "${escapeStringForJson(laboratorio1)}",
  "vencimento": "${escapeStringForJson(validade1)}",
  "img": "${escapeStringForJson(imagem1)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'INSERE medicacao',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/insere_medicamento',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IDPacienteENomeCall {
  static Future<ApiCallResponse> call({
    int? cpfusuario,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ID paciente e nome',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/lista_pacientes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idpaciente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idpaciente''',
      ));
  static int? idusuario(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idusuario''',
      ));
  static String? nomepaciente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].nomepaciente''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].estado''',
      ));
  static String? cpfpaciente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].cpfpaciente''',
      ));
}

class GeraPrescricaoCall {
  static Future<ApiCallResponse> call({
    int? idreceita,
    String? chave = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idreceita": ${idreceita},
  "chave": "${escapeStringForJson(chave)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gera prescricao',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/gera_prescricao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InserePacienteCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? nasc = '',
    String? pfpf = '',
    String? rua = '',
    int? num,
    String? compl = '',
    String? bairro = '',
    String? cidade = '',
    String? estado = '',
    String? cep = '',
    String? wpp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "nasc": "${escapeStringForJson(nasc)}",
  "pfpf": "${escapeStringForJson(pfpf)}",
  "rua": "${escapeStringForJson(rua)}",
  "num": "${num}",
  "compl": "${escapeStringForJson(compl)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "cidade": "${escapeStringForJson(cidade)}",
  "estado": "${escapeStringForJson(estado)}",
  "cep": "${escapeStringForJson(cep)}",
  "wpp": "${escapeStringForJson(wpp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insere Paciente',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/insere_paciente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PegaPacienteCall {
  static Future<ApiCallResponse> call({
    int? idpaciente,
  }) async {
    final ffApiRequestBody = '''
{
  "idpaciente": ${idpaciente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pega paciente',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/pega_paciente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? pfpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].pfpj''',
      ));
  static String? paciente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].paciente''',
      ));
  static int? idpaciente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idpaciente''',
      ));
  static int? idusuario(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idusuario''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].estado''',
      ));
}

class PegaIDFarmaciaCall {
  static Future<ApiCallResponse> call({
    String? emailusuario = '',
  }) async {
    final ffApiRequestBody = '''
{
  "emailusuario": "${escapeStringForJson(emailusuario)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pega ID farmacia',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/pega_id_farmacia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idfarmacia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idfarmacia''',
      ));
}

class InsereFarmaciaCall {
  static Future<ApiCallResponse> call({
    int? identificador,
    String? pfpj = '',
    String? whatsapp = '',
    String? rua = '',
    String? num = '',
    String? compl = '',
    String? bairro = '',
    String? cidade = '',
    String? estado = '',
    String? cep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "identificador": ${identificador},
  "pfpj": "${escapeStringForJson(pfpj)}",
  "whatsapp": "${escapeStringForJson(whatsapp)}",
  "rua": "${escapeStringForJson(rua)}",
  "num": "${escapeStringForJson(num)}",
  "compl": "${escapeStringForJson(compl)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "cidade": "${escapeStringForJson(cidade)}",
  "estado": "${escapeStringForJson(estado)}",
  "cep": "${escapeStringForJson(cep)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insere Farmacia',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/cria_farmacia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsereMedicoCall {
  static Future<ApiCallResponse> call({
    int? identificador,
    String? registro = '',
    String? especial = '',
    String? whatsapp = '',
    String? rua = '',
    String? num = '',
    String? compl = '',
    String? bairro = '',
    String? cidade = '',
    String? estado = '',
    String? cep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "identificador": ${identificador},
  "registro": "${escapeStringForJson(registro)}",
  "especial": "${escapeStringForJson(especial)}",
  "whatsapp": "${escapeStringForJson(whatsapp)}",
  "rua": "${escapeStringForJson(rua)}",
  "num": "${escapeStringForJson(num)}",
  "compl": "${escapeStringForJson(compl)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "cidade": "${escapeStringForJson(cidade)}",
  "estado": "${escapeStringForJson(estado)}",
  "cep": "${escapeStringForJson(cep)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insere Medico',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/cria_medico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaUsuarioCall {
  static Future<ApiCallResponse> call({
    String? emailParam = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email_param": "${escapeStringForJson(emailParam)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Busca usuario',
      apiUrl:
          'https://dppyplipgqxgbovndyqw.supabase.co/rest/v1/rpc/dados_usuario',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwcHlwbGlwZ3F4Z2Jvdm5keXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjIwNzAsImV4cCI6MjA1ODAzODA3MH0.jggQpW7vYsQ8iaxl_cFwvtwFI1mSe69MMkp2--BtemI',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].identificador''',
      ));
  static String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipo''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].city''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].state''',
      ));
}

class ConsultaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta CEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class BuscaMedicoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca medico',
      apiUrl: 'https://integrations.api.memed.com.br/v1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemedAutCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'memedAut',
      apiUrl:
          'https://integrations.memed.com.br/modulos/plataforma.sinapse-prescricao/build/sinapse-prescricao.min.js',
      callType: ApiCallType.POST,
      headers: {
        'API_KEY': 'iJGiB4kjDGOLeDFPWMG3no9VnN7Abpqe3w1jEFm6olkhkZD6oSfSmYCm',
        'SECRET_KEY':
            'Xe8M5GvBGCr4FStKfxXKisRo3SfYKI7KrTMkJpCAstzu2yXVN4av5nmL',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEspecialidadeCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarEspecialidade',
      apiUrl:
          'https://api.memed.com.br/v1/especialidades?api-key=7fff98a8a2648a164ab132567066477623d59f139852c6ca08ddafe1f74f533c&secret-key=2044a3708637fba23d8e108078516f7d98a464eb56c25aa1883f06f6c89efd3d',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/vnd.api+json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
