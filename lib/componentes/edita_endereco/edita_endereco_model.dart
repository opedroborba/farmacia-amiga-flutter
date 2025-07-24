import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'edita_endereco_widget.dart' show EditaEnderecoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditaEnderecoModel extends FlutterFlowModel<EditaEnderecoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in editaEndereco widget.
  List<FarmaciaRow>? farmacia;
  // State field(s) for TFNome widget.
  FocusNode? tFNomeFocusNode1;
  TextEditingController? tFNomeTextController1;
  String? Function(BuildContext, String?)? tFNomeTextController1Validator;
  // State field(s) for TFNome widget.
  FocusNode? tFNomeFocusNode2;
  TextEditingController? tFNomeTextController2;
  String? Function(BuildContext, String?)? tFNomeTextController2Validator;
  // State field(s) for TFNome widget.
  FocusNode? tFNomeFocusNode3;
  TextEditingController? tFNomeTextController3;
  String? Function(BuildContext, String?)? tFNomeTextController3Validator;
  // State field(s) for TFNome widget.
  FocusNode? tFNomeFocusNode4;
  TextEditingController? tFNomeTextController4;
  String? Function(BuildContext, String?)? tFNomeTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFNomeFocusNode1?.dispose();
    tFNomeTextController1?.dispose();

    tFNomeFocusNode2?.dispose();
    tFNomeTextController2?.dispose();

    tFNomeFocusNode3?.dispose();
    tFNomeTextController3?.dispose();

    tFNomeFocusNode4?.dispose();
    tFNomeTextController4?.dispose();
  }
}
