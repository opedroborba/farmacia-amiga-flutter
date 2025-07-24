import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'dadosmedicacao_widget.dart' show DadosmedicacaoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DadosmedicacaoModel extends FlutterFlowModel<DadosmedicacaoWidget> {
  ///  Local state fields for this component.

  bool editaFoto = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for numeroComprimidos widget.
  FocusNode? numeroComprimidosFocusNode;
  TextEditingController? numeroComprimidosTextController;
  String? Function(BuildContext, String?)?
      numeroComprimidosTextControllerValidator;
  // State field(s) for TFadministracao widget.
  FocusNode? tFadministracaoFocusNode;
  TextEditingController? tFadministracaoTextController;
  String? Function(BuildContext, String?)?
      tFadministracaoTextControllerValidator;
  // State field(s) for frequencia widget.
  FocusNode? frequenciaFocusNode;
  TextEditingController? frequenciaTextController;
  String? Function(BuildContext, String?)? frequenciaTextControllerValidator;
  // State field(s) for horas widget.
  String? horasValue;
  FormFieldController<String>? horasValueController;
  // State field(s) for diasduracao widget.
  FocusNode? diasduracaoFocusNode;
  TextEditingController? diasduracaoTextController;
  String? Function(BuildContext, String?)? diasduracaoTextControllerValidator;
  // State field(s) for tipoduracao widget.
  String? tipoduracaoValue;
  FormFieldController<String>? tipoduracaoValueController;
  // State field(s) for Caixas widget.
  FocusNode? caixasFocusNode;
  TextEditingController? caixasTextController;
  String? Function(BuildContext, String?)? caixasTextControllerValidator;
  // State field(s) for TFmetodo widget.
  FocusNode? tFmetodoFocusNode;
  TextEditingController? tFmetodoTextController;
  String? Function(BuildContext, String?)? tFmetodoTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ItensReceitaRow? linhaInserida;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numeroComprimidosFocusNode?.dispose();
    numeroComprimidosTextController?.dispose();

    tFadministracaoFocusNode?.dispose();
    tFadministracaoTextController?.dispose();

    frequenciaFocusNode?.dispose();
    frequenciaTextController?.dispose();

    diasduracaoFocusNode?.dispose();
    diasduracaoTextController?.dispose();

    caixasFocusNode?.dispose();
    caixasTextController?.dispose();

    tFmetodoFocusNode?.dispose();
    tFmetodoTextController?.dispose();
  }
}
