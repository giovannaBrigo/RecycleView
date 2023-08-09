import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_view/services/auth_service.dart';
import 'package:recycle_view/views/bemvindo_page.dart';
import 'package:recycle_view/views/education/vidro_page.dart';
import 'package:recycle_view/views/tela_inicial.dart';
import 'package:recycle_view/widget/auth_check.dart';

import 'firebase_options.dart';

bool isLogin = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => AuthService(),
      ),
    ], child: MainApp()),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

// Tela inicial (colocar em outra classe)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(233, 233, 233, 1),
      debugShowCheckedModeBanner: false,
      home: AuthCheck(),
    );
  }
}
