import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'temp_model.dart';
export 'temp_model.dart';

class TempWidget extends StatefulWidget {
  const TempWidget({super.key});

  static String routeName = 'temp';
  static String routePath = '/temp';

  @override
  State<TempWidget> createState() => _TempWidgetState();
}

class _TempWidgetState extends State<TempWidget> {
  late TempModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TempModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.usuario = await BuscaUsuarioCall.call(
        emailParam: currentUserEmail,
      );

      if (BuscaUsuarioCall.tipo(
            (_model.usuario?.jsonBody ?? ''),
          ) ==
          'Médico') {
        _model.usuariomedico = await ProducaoMemedGroup.dadosUserCall.call(
          idUsuario: currentUserUid,
        );

        FFAppState().codigounicomedico = ProducaoMemedGroup.dadosUserCall.token(
          (_model.usuariomedico?.jsonBody ?? ''),
        )!;
        safeSetState(() {});

        context.pushNamed(ControleMedicoWidget.routeName);
      } else if (BuscaUsuarioCall.tipo(
            (_model.usuario?.jsonBody ?? ''),
          ) ==
          'Farmácia') {
        context.pushNamed(ControleFermaciaWidget.routeName);
      } else if (BuscaUsuarioCall.tipo(
            (_model.usuario?.jsonBody ?? ''),
          ) ==
          'Paciente') {
        context.pushNamed(ControlePacienteWidget.routeName);
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Erro'),
                content: Text('Perfil não identificado!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              ),
            );
          },
        );
      }

      FFAppState().dadosUsuario =
          DadosUsuarioStruct.maybeFromMap((_model.usuario?.jsonBody ?? ''))!;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
