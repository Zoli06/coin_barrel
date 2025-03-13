import 'package:coin_barrel/widgets/my_text_field.dart';
import 'package:coin_barrel/widgets/my_height.dart';
import 'package:coin_barrel/widgets/my_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  static const elementsHeight = 56;

  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var _obscurePassword = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Text("Coin Barrel",
                      style: Theme.of(context).textTheme.displayMedium)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome back",
                      style: Theme.of(context).textTheme.headlineMedium),
                  MyGap(),
                  MyHeight(
                      child: MyTextField(
                    expandsVertically: true,
                    controller: usernameController,
                    hintText: "Username",
                  )),
                  MyGap(),
                  MyHeight(
                    child: MyTextField(
                      expandsVertically: true,
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: _obscurePassword,
                      onToggleObscure: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      showToggleObscure: true,
                    ),
                  ),
                  MyGap(),
                  Row(
                    children: [
                      MyHeight(
                          child: AspectRatio(
                              aspectRatio: 1,
                              child: IconButton.filledTonal(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () => {},
                              ))),
                      MyGap(),
                      Expanded(
                          child: MyHeight(
                        child: FilledButton(
                          child: Text("Login"),
                          onPressed: () => {},
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ],
          )),
      Positioned(
        right: -25,
        bottom: -50,
        height: 225,
        width: 225,
        child: Image.asset("assets/barrel.png"),
      )
    ]);
  }
}
