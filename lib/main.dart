import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/temas/tema_branco.dart';
import 'package:whatsapp_messenger/common/temas/tema_dark.dart';
import 'package:whatsapp_messenger/feature/auth/pages/login_pagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp ',
      theme: temaBranco(),
      darkTheme: temaDark(),
      themeMode: ThemeMode.dark,
      home: const PaginaLogin(),
    );
  }
}
