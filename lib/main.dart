import 'package:coin_barrel/pages/login.dart';
import 'package:coin_barrel/pages/register.dart';
import 'package:coin_barrel/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/generated/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'),
          const Locale('hu'),
        ],
        home: SafeArea(
          child: Scaffold(
            body: LoginForm(),
          ),
        ),
        theme: mainTheme);
  }
}
