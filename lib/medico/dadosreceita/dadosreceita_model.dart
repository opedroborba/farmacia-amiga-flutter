import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'dadosreceita_widget.dart' show DadosreceitaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DadosreceitaModel extends FlutterFlowModel<DadosreceitaWidget> {
  ///  Local state fields for this page.

  int itemReceita = 0;

  ///  State fields for stateful widgets in this page.

  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel1;
  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<ItensReceitaRow>? apiResultf3y;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel2;

  @override
  void initState(BuildContext context) {
    menuLateralModel1 = createModel(context, () => MenuLateralModel());
    menuLateralModel2 = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuLateralModel1.dispose();
    menuLateralModel2.dispose();
  }

  /// Action blocks.
  Future teste(BuildContext context) async {}
}
