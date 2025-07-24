import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'adicionamedicacao_widget.dart' show AdicionamedicacaoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdicionamedicacaoModel extends FlutterFlowModel<AdicionamedicacaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DDcategoria widget.
  String? dDcategoriaValue;
  FormFieldController<String>? dDcategoriaValueController;
  // State field(s) for TFPrincAtivo widget.
  FocusNode? tFPrincAtivoFocusNode;
  TextEditingController? tFPrincAtivoTextController;
  String? Function(BuildContext, String?)? tFPrincAtivoTextControllerValidator;
  // State field(s) for TFlote widget.
  FocusNode? tFloteFocusNode;
  TextEditingController? tFloteTextController;
  String? Function(BuildContext, String?)? tFloteTextControllerValidator;
  // State field(s) for DDdesignacao widget.
  String? dDdesignacaoValue;
  FormFieldController<String>? dDdesignacaoValueController;
  // State field(s) for TFlaboratorio widget.
  FocusNode? tFlaboratorioFocusNode;
  TextEditingController? tFlaboratorioTextController;
  String? Function(BuildContext, String?)? tFlaboratorioTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TFquantidade widget.
  FocusNode? tFquantidadeFocusNode;
  TextEditingController? tFquantidadeTextController;
  String? Function(BuildContext, String?)? tFquantidadeTextControllerValidator;
  // State field(s) for DDtipoMedicacao widget.
  String? dDtipoMedicacaoValue;
  FormFieldController<String>? dDtipoMedicacaoValueController;
  // State field(s) for TFunidadeporcaixa widget.
  FocusNode? tFunidadeporcaixaFocusNode;
  TextEditingController? tFunidadeporcaixaTextController;
  String? Function(BuildContext, String?)?
      tFunidadeporcaixaTextControllerValidator;
  // State field(s) for TFconcentracao widget.
  FocusNode? tFconcentracaoFocusNode;
  TextEditingController? tFconcentracaoTextController;
  String? Function(BuildContext, String?)?
      tFconcentracaoTextControllerValidator;
  // State field(s) for DDconcentracao widget.
  String? dDconcentracaoValue;
  FormFieldController<String>? dDconcentracaoValueController;
  // State field(s) for DDadministracao widget.
  String? dDadministracaoValue;
  FormFieldController<String>? dDadministracaoValueController;
  bool isDataUploading_uploadDataSc7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataSc7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataSc7 = '';

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<AdministracaoRow>? administracao;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriasRow>? categoria;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ConcentracaoRow>? concentracao;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MedicamentosRow? farmacia;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFPrincAtivoFocusNode?.dispose();
    tFPrincAtivoTextController?.dispose();

    tFloteFocusNode?.dispose();
    tFloteTextController?.dispose();

    tFlaboratorioFocusNode?.dispose();
    tFlaboratorioTextController?.dispose();

    tFquantidadeFocusNode?.dispose();
    tFquantidadeTextController?.dispose();

    tFunidadeporcaixaFocusNode?.dispose();
    tFunidadeporcaixaTextController?.dispose();

    tFconcentracaoFocusNode?.dispose();
    tFconcentracaoTextController?.dispose();
  }
}
