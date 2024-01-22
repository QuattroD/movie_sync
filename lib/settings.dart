import 'package:flutter/material.dart';
import 'package:movie_sync/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        children: [
          Switch(value: darkTheme, onChanged: (bool value) {
            setState(() {
              if(value == true) {
                darkTheme = value;
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              }
              else{
                darkTheme = value;
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              }
            });
          })
        ],
      ),
    ));
  }
}
