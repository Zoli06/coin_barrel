import 'package:coin_barrel/colors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final borderRadius = BorderRadius.circular(12);

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1000)),
                hintText: "Email address",
                hintStyle: TextStyle(color: outline),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: theme,
                    ),
                    borderRadius: BorderRadius.circular(1000)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: outline,
                    ),
                    borderRadius: BorderRadius.circular(1000)),
              ),
              style: TextStyle(color: text),
            ),
            SizedBox(height: 40),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1000)),
                hintText: "Password",
                hintStyle: TextStyle(color: outline),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: theme,
                    ),
                    borderRadius: BorderRadius.circular(1000)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: outline,
                    ),
                    borderRadius: BorderRadius.circular(1000)),
              ),
              style: TextStyle(color: text),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: background,
                      shape: StadiumBorder(),
                      backgroundColor: theme,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  child: const Text('Login')),
            )
          ],
        ));
  }
}
