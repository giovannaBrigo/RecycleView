import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recycle_view/views/cadastro.dart';
import 'package:recycle_view/views/educacao_ambiental_page.dart';
import 'package:recycle_view/views/education/materiais_eletronicos_page.dart';
import 'package:recycle_view/views/education/oleo_page.dart';
import 'package:recycle_view/views/education/papel_page.dart';
import 'package:recycle_view/views/education/res_hospitalares_page.dart';
import 'package:recycle_view/views/education/res_radioativos_page.dart';
import 'package:recycle_view/views/login.dart';
import 'package:recycle_view/views/tela_inicial.dart';
import 'package:recycle_view/views/bemvindo_page.dart';
import 'package:recycle_view/views/cadastro_de_pontos_page.dart';
import 'package:recycle_view/views/graficos_page.dart';
import 'dart:io';

void main() async {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

// Tela inicial (colocar em outra classe)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(233, 233, 233, 1),
      debugShowCheckedModeBanner: false,
      home: EducacaoAmbientalPage(),
    );
  }
}
