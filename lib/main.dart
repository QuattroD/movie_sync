import 'package:flutter/material.dart';
import 'package:movie_sync/auth.dart';
import 'package:movie_sync/home.dart';
import 'package:movie_sync/onboarding_screen.dart';
import 'package:movie_sync/reg.dart';
import 'package:movie_sync/settings.dart';
import 'package:movie_sync/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoardingScreen(),
        '/auth': (context) => const AuthPage(),
        '/reg': (context) => const RegPage(),
        '/home': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
