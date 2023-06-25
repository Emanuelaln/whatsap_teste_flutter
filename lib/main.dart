import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/temas/tema_branco.dart';
import 'package:whatsapp_messenger/common/temas/tema_dark.dart';
import 'package:whatsapp_messenger/feature/auth/pages/usuario_info_page.dart';
import 'package:whatsapp_messenger/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      home: const UsuarioInfoPagina(),
    );
  }
}
