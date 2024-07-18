import 'package:flutter/material.dart';
import 'pages/SplashScreen.dart';
import 'pages/RegisterPage.dart';
import 'pages/LoginPage.dart';
import 'pages/MainMenuPage.dart';
import 'pages/ImmunizationPage.dart';
import 'pages/MedicinePage.dart';
import 'pages/HistoryPage.dart';
import 'pages/ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan debug banner
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/mainmenu': (context) => MainMenuPage(),
        '/immunization': (context) => ImmunizationPage(),
        '/medicine': (context) => MedicinePage(),
        '/medical_history': (context) => HistoryPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
