import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'temp_widget.dart' show TempWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class TempModel extends FlutterFlowModel<TempWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Busca usuario)] action in temp widget.
  ApiCallResponse? usuario;
  // Stores action output result for [Backend Call - API (dadosUser)] action in temp widget.
  ApiCallResponse? usuariomedico;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
