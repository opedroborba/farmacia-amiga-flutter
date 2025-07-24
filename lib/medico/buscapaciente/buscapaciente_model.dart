import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'buscapaciente_widget.dart' show BuscapacienteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BuscapacienteModel extends FlutterFlowModel<BuscapacienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<PacienteRow>? pacientebusca;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<UsersRow>? pacientebuscaususarios;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PacienteRow>? pacienteCPF;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? pacienteNOME;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceitasRow? receitaCRIADA;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
