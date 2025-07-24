// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfWidgets;
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<String?> gerarReceitaPdf(
  String medico,
  String crm,
  DateTime dataPrescricao,
  List<ItensreceitaStruct> listaMedicacoes,
  String chaveReceita,
  String logo, // logotipo no topo
  String endereco, // novo argumento
  String nomeFarmacia, // novo argumento
) async {
  final pdf = pdfWidgets.Document();

  // Carrega o logotipo
  pdfWidgets.ImageProvider? logoImage;
  try {
    final response = await http.get(Uri.parse(logo));
    if (response.statusCode == 200) {
      logoImage = pdfWidgets.MemoryImage(response.bodyBytes);
    }
  } catch (e) {
    print('Erro ao carregar o logotipo: $e');
  }

  pdf.addPage(
    pdfWidgets.MultiPage(
      pageFormat: PdfPageFormat.a4,
      footer: (context) => pdfWidgets.Column(
        crossAxisAlignment: pdfWidgets.CrossAxisAlignment.start,
        children: [
          pdfWidgets.Divider(),
          pdfWidgets.Text('Local da Retirada',
              style:
                  pdfWidgets.TextStyle(fontWeight: pdfWidgets.FontWeight.bold)),
          pdfWidgets.Text(endereco),
          pdfWidgets.Text(nomeFarmacia),
        ],
      ),
      build: (context) => [
        if (logoImage != null)
          pdfWidgets.Center(
            child: pdfWidgets.Image(logoImage, width: 200, height: 100),
          ),
        pdfWidgets.SizedBox(height: 20),
        pdfWidgets.Text(
          'Receita Médica',
          style: pdfWidgets.TextStyle(
            fontSize: 20,
            fontWeight: pdfWidgets.FontWeight.bold,
          ),
        ),
        pdfWidgets.SizedBox(height: 10),
        pdfWidgets.Text(
          'Data: ${DateFormat('dd/MM/yyyy').format(dataPrescricao)}',
        ),
        pdfWidgets.Text('Médico: $medico (CRM: $crm)'),
        pdfWidgets.SizedBox(height: 20),
        pdfWidgets.Text(
          'Chave da Receita: $chaveReceita',
          style: pdfWidgets.TextStyle(
            fontSize: 12,
            fontStyle: pdfWidgets.FontStyle.italic,
          ),
        ),
        pdfWidgets.SizedBox(height: 20),
        pdfWidgets.Text(
          'Prescrição',
          style: pdfWidgets.TextStyle(
            fontSize: 16,
            fontWeight: pdfWidgets.FontWeight.bold,
          ),
        ),
        pdfWidgets.SizedBox(height: 10),
        pdfWidgets.Table.fromTextArray(
          headers: ['Medicação', 'Dosagem', 'Frequência', 'Posologia'],
          data: listaMedicacoes
              .map((item) => [
                    item.princ ?? '',
                    item.dos ?? '',
                    item.freqinjestao ?? '',
                    item.metinjestao ?? '',
                  ])
              .toList(),
        ),
      ],
    ),
  );

  final Uint8List pdfBytes = Uint8List.fromList(await pdf.save());
  final fileName = 'receita_${DateTime.now().millisecondsSinceEpoch}.pdf';
  final pathInBucket = 'arquivos/$fileName';

  try {
    await Supabase.instance.client.storage.from('receitas').uploadBinary(
          pathInBucket,
          pdfBytes,
          fileOptions: const FileOptions(contentType: 'application/pdf'),
        );

    final url = Supabase.instance.client.storage
        .from('receitas')
        .getPublicUrl(pathInBucket);

    final updateResponse = await Supabase.instance.client
        .from('receitas')
        .update({'receita': url})
        .eq('chavereceita', chaveReceita)
        .select()
        .maybeSingle();

    if (updateResponse == null) {
      print('Nenhum registro foi atualizado com a chave: $chaveReceita');
    }

    await abrirPdfAutomaticamente(url);

    return url;
  } catch (e) {
    print('Erro ao gerar ou enviar o PDF: $e');
    return null;
  }
}

Future<void> abrirPdfAutomaticamente(String pdfUrl) async {
  final uri = Uri.parse(pdfUrl);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    print('Não foi possível abrir o PDF: $pdfUrl');
  }
}
