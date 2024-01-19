import 'package:flutter/material.dart';
import 'package:movie_sync/auth.dart';
import 'package:movie_sync/onboarding_screen.dart';
import 'package:movie_sync/reg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoardingScreen(),
        '/auth': (context) => const AuthPage(),
        '/reg': (context) => const RegPage(),
      },
    );
  }
}
