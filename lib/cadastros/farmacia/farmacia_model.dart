import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'farmacia_widget.dart' show FarmaciaWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class FarmaciaModel extends FlutterFlowModel<FarmaciaWidget> {
  ///  Local state fields for this component.

  bool validaCEP = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TFCnpj widget.
  FocusNode? tFCnpjFocusNode1;
  TextEditingController? tFCnpjTextController1;
  String? Function(BuildContext, String?)? tFCnpjTextController1Validator;
  // State field(s) for TFCnpj widget.
  FocusNode? tFCnpjFocusNode2;
  TextEditingController? tFCnpjTextController2;
  String? Function(BuildContext, String?)? tFCnpjTextController2Validator;
  // Stores action output result for [Backend Call - API (Consulta CEP)] action in IconButton widget.
  ApiCallResponse? cep;
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
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<EstadosRow>? estado;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CidadesRow>? cidade;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFCnpjFocusNode1?.dispose();
    tFCnpjTextController1?.dispose();

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
