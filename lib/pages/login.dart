import 'package:coin_barrel/widgets/my_content_wrapper.dart';
import 'package:coin_barrel/widgets/my_step_buttons.dart';
import 'package:coin_barrel/widgets/my_text_field.dart';
import 'package:coin_barrel/widgets/my_height.dart';
import 'package:coin_barrel/widgets/my_gap.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
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
    return MyContentWrapper(
        showMascot: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(context.tr('a'),
                style: Theme.of(context).textTheme.displayMedium),
            MyGap(multiplier: 2),
            Text("Welcome back",
                style: Theme.of(context).textTheme.headlineMedium),
            MyGap(),
            Flexible(
                child: MyHeight(
                    allowGrow: true,
                    child: MyTextField(
                      expandsVertically: true,
                      controller: usernameController,
                      hintText: "Username",
                    ))),
            MyGap(),
            Flexible(
                child: MyHeight(
              allowGrow: true,
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
            )),
            MyGap(),
            MyHeight(child: MyStepButtons(primaryText: Text("Login")))
          ],
        ));
  }
}
