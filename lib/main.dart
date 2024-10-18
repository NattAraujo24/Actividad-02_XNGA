import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learning1/firebase_options.dart';
import 'package:learning1/kernel/widgets/crear_cuenta.dart';
import 'package:learning1/modules/auth/screens/codigo.dart';
import 'package:learning1/modules/auth/screens/contra.dart';
import 'package:learning1/modules/auth/screens/login.dart';
import 'package:learning1/modules/auth/screens/verificacion.dart';
import 'package:learning1/navegation/home.dart';
import 'package:learning1/navegation/navigation.dart';
import 'package:learning1/navegation/profile.dart';
import 'package:learning1/widgets/SplashScreen.dart';

//flutter pub get
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/codigo': (context) => const Codigo(),
        '/verificacion': (context) => const Verificacion(),
        '/contra': (context) => const Contra(),
        '/crearcuenta': (context) => const CrearCuenta()
      },
    );
  }
}
