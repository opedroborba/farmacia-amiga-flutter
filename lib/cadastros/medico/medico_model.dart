import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'medico_widget.dart' show MedicoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MedicoModel extends FlutterFlowModel<MedicoWidget> {
  ///  Local state fields for this component.

  bool validaCEP = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TFCnpj widget.
  FocusNode? tFCnpjFocusNode1;
  TextEditingController? tFCnpjTextController1;
  String? Function(BuildContext, String?)? tFCnpjTextController1Validator;
  // State field(s) for TFUFCrm widget.
  FocusNode? tFUFCrmFocusNode;
  TextEditingController? tFUFCrmTextController;
  String? Function(BuildContext, String?)? tFUFCrmTextControllerValidator;
  // State field(s) for TFEspecialidade widget.
  String? tFEspecialidadeValue;
  FormFieldController<String>? tFEspecialidadeValueController;
  DateTime? datePicked;
  // State field(s) for TFCnpj widget.
  FocusNode? tFCnpjFocusNode2;
  TextEditingController? tFCnpjTextController2;
  String? Function(BuildContext, String?)? tFCnpjTextController2Validator;
  // Stores action output result for [Backend Call - API (Consulta CEP)] action in IconButton widget.
  ApiCallResponse? cepmedico;
  // Stores action output result for [Backend Call - API (buscarCidades Filtro)] action in IconButton widget.
  ApiCallResponse? cidadLocalizada;
  // State field(s) for TFRua widget.
  FocusNode? tFRuaFocusNode;
  TextEditingController? tFRuaTextController;
  String? Function(BuildContext, String?)? tFRuaTextControllerValidator;
  // State field(s) for TFBairro widget.
  FocusNode? tFBairroFocusNode;
  TextEditingController? tFBairroTextController;
  String? Function(BuildContext, String?)? tFBairroTextControllerValidator;
  // State field(s) for TFNumero widget.
  FocusNode? tFNumeroFocusNode;
  TextEditingController? tFNumeroTextController;
  String? Function(BuildContext, String?)? tFNumeroTextControllerValidator;
  // State field(s) for TFCompl widget.
  FocusNode? tFComplFocusNode;
  TextEditingController? tFComplTextController;
  String? Function(BuildContext, String?)? tFComplTextControllerValidator;
  // State field(s) for TFTelefone widget.
  FocusNode? tFTelefoneFocusNode;
  TextEditingController? tFTelefoneTextController;
  late MaskTextInputFormatter tFTelefoneMask;
  String? Function(BuildContext, String?)? tFTelefoneTextControllerValidator;
  // State field(s) for DDsexo widget.
  String? dDsexoValue;
  FormFieldController<String>? dDsexoValueController;
  // Stores action output result for [Backend Call - API (buscarCidades Filtro)] action in Button widget.
  ApiCallResponse? cidadeMemed;
  // Stores action output result for [Backend Call - API (dadosUser)] action in Button widget.
  ApiCallResponse? jaexiste;
  // Stores action output result for [Backend Call - API (cadastroPresc)] action in Button widget.
  ApiCallResponse? dadosMedico;
  // Stores action output result for [Backend Call - API (dadosUser)] action in Button widget.
  ApiCallResponse? dadosuser1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFCnpjFocusNode1?.dispose();
    tFCnpjTextController1?.dispose();

    tFUFCrmFocusNode?.dispose();
    tFUFCrmTextController?.dispose();

    tFCnpjFocusNode2?.dispose();
    tFCnpjTextController2?.dispose();

    tFRuaFocusNode?.dispose();
    tFRuaTextController?.dispose();

    tFBairroFocusNode?.dispose();
    tFBairroTextController?.dispose();

    tFNumeroFocusNode?.dispose();
    tFNumeroTextController?.dispose();

    tFComplFocusNode?.dispose();
    tFComplTextController?.dispose();

    tFTelefoneFocusNode?.dispose();
    tFTelefoneTextController?.dispose();
  }
}
