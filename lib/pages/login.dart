import 'package:coin_barrel/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Text("Coin Barrel",
                      style: TextStyle(
                          fontFamily: "Pirata One",
                          fontSize: 64,
                          color: text))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome back",
                      style: TextStyle(fontSize: 45, color: text)),
                  SizedBox(height: 5),
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
                  SizedBox(height: 20),
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
                        suffixIcon: IconButton(
                            onPressed: () => {},
                            icon: SvgPicture.asset("assets/eye.svg",
                                width: 44,
                                height: 30,
                                colorFilter: ColorFilter.mode(
                                    outline, BlendMode.srcIn)))),
                    style: TextStyle(color: text),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        //width: double.infinity,
                        height: 55,
                        width: 55,
                        child: BackButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: background,
                                shape: StadiumBorder(),
                                backgroundColor: outline,
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            // child: const Text('Back')
                          ),
                      ),
                      SizedBox(width: 15),
                      Expanded(child:
                      SizedBox(
                        //width: double.infinity,
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
