import 'package:coin_barrel/pages/register.dart';
import 'package:coin_barrel/styles/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: RegisterForm(),
          ),
        ),
        theme: mainTheme);
  }
}
