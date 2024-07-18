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
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins'),
          displayMedium: TextStyle(fontFamily: 'Poppins'),
          displaySmall: TextStyle(fontFamily: 'Poppins'),
          headlineLarge: TextStyle(fontFamily: 'Poppins'),
          headlineMedium: TextStyle(fontFamily: 'Poppins'),
          headlineSmall: TextStyle(fontFamily: 'Poppins'),
          titleLarge: TextStyle(fontFamily: 'Poppins'),
          titleMedium: TextStyle(fontFamily: 'Poppins'),
          titleSmall: TextStyle(fontFamily: 'Poppins'),
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          bodySmall: TextStyle(fontFamily: 'Poppins'),
          labelLarge: TextStyle(fontFamily: 'Poppins'),
          labelMedium: TextStyle(fontFamily: 'Poppins'),
          labelSmall: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
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
