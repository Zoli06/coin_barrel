import 'package:coin_barrel/colors.dart';
import 'package:coin_barrel/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
          body: LoginForm(),
          backgroundColor: background,
        )
    );
  }
}
