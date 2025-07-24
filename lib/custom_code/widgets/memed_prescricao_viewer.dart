// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

class MemedPrescricaoViewer extends StatefulWidget {
  final String pacienteJson;
  final String medicoJson;

  const MemedPrescricaoViewer({
    Key? key,
    required this.pacienteJson,
    required this.medicoJson,
  }) : super(key: key);

  @override
  _MemedPrescricaoViewerState createState() => _MemedPrescricaoViewerState();
}

class _MemedPrescricaoViewerState extends State<MemedPrescricaoViewer> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadFlutterAsset('assets/html/index.html') // seu arquivo HTML
      ..setNavigationDelegate(NavigationDelegate(
        onPageFinished: (url) async {
          final mergedJson = jsonEncode({
            'paciente': jsonDecode(widget.pacienteJson),
            'medico': jsonDecode(widget.medicoJson),
          });

          final jsCall = "receiveMemedData(`$mergedJson`);";
          await _controller.runJavaScript(jsCall);
        },
      ));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller);
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
