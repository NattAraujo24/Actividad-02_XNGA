import 'package:flutter/material.dart';
import 'package:learning1/modules/auth/screens/codigo.dart';
import 'package:learning1/modules/auth/screens/contra.dart';
import 'package:learning1/modules/auth/screens/login.dart';
import 'package:learning1/modules/auth/screens/verificacion.dart';
import 'package:learning1/navegation/home.dart';
import 'package:learning1/navegation/navigation.dart';
import 'package:learning1/navegation/profile.dart';
import 'package:learning1/widgets/SplashScreen.dart';

void main() {
  runApp(const MainApp());
}

//flutter pub get
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const Login(),
        '/menu':(context) => const Navigation(),
        '/home':(context) => const Home(),
        '/profile':(context) => const Profile(),
        '/codigo':(context) => const Codigo(),
        '/verificacion':(context) => const Verificacion(),
        '/contra':(context) => const Contra(),
        '/splash':(context) => const SplashScreen(),
      },
    );
  }
}