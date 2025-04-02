import 'package:coin_barrel/pages/register.dart';
import 'package:coin_barrel/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
          Locale('hu'),
        ],
        home: SafeArea(
          child: Scaffold(
            body: RegisterForm(),
          ),
        ),
        theme: mainTheme);
  }
}
