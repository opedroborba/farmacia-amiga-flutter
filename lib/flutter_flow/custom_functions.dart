import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String pegaUltimoNome(String nome) {
  // Retorne os caracteres apos o último espaço
  return nome.split(' ').last; // Retorna o último nome após o último espaço
}

String primeiroNome(String nome) {
  return nome.split(' ').last; // Retorna o último nome após o último espaço
}
