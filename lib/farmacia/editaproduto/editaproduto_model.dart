import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'editaproduto_widget.dart' show EditaprodutoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditaprodutoModel extends FlutterFlowModel<EditaprodutoWidget> {
  ///  Local state fields for this component.

  bool editaFoto = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Busca usuario)] action in editaproduto widget.
  ApiCallResponse? usuario;
  // State field(s) for TFNomePrincipio widget.
  FocusNode? tFNomePrincipioFocusNode;
  TextEditingController? tFNomePrincipioTextController;
  String? Function(BuildContext, String?)?
      tFNomePrincipioTextControllerValidator;
  // State field(s) for TFMarca widget.
  FocusNode? tFMarcaFocusNode;
  TextEditingController? tFMarcaTextController;
  String? Function(BuildContext, String?)? tFMarcaTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TFCaixas widget.
  FocusNode? tFCaixasFocusNode;
  TextEditingController? tFCaixasTextController;
  String? Function(BuildContext, String?)? tFCaixasTextControllerValidator;
  // State field(s) for TFQtdPorCaixa widget.
  FocusNode? tFQtdPorCaixaFocusNode;
  TextEditingController? tFQtdPorCaixaTextController;
  String? Function(BuildContext, String?)? tFQtdPorCaixaTextControllerValidator;
  // State field(s) for TFCocent widget.
  FocusNode? tFCocentFocusNode;
  TextEditingController? tFCocentTextController;
  String? Function(BuildContext, String?)? tFCocentTextControllerValidator;
  // State field(s) for DDconcentracao widget.
  String? dDconcentracaoValue;
  FormFieldController<String>? dDconcentracaoValueController;
  // State field(s) for DDdesignacao widget.
  String? dDdesignacaoValue;
  FormFieldController<String>? dDdesignacaoValueController;
  // State field(s) for DDadministracao widget.
  String? dDadministracaoValue;
  FormFieldController<String>? dDadministracaoValueController;
  // State field(s) for DDcategoria widget.
  String? dDcategoriaValue;
  FormFieldController<String>? dDcategoriaValueController;
  bool isDataUploading_imagem = false;
  FFUploadedFile uploadedLocalFile_imagem =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imagem = '';

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<AdministracaoRow>? administracao;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriasRow>? categoria;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ConcentracaoRow>? concentracao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFNomePrincipioFocusNode?.dispose();
    tFNomePrincipioTextController?.dispose();

    tFMarcaFocusNode?.dispose();
    tFMarcaTextController?.dispose();

    tFCaixasFocusNode?.dispose();
    tFCaixasTextController?.dispose();

    tFQtdPorCaixaFocusNode?.dispose();
    tFQtdPorCaixaTextController?.dispose();

    tFCocentFocusNode?.dispose();
    tFCocentTextController?.dispose();
  }
}
