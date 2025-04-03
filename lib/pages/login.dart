import 'package:coin_barrel/widgets/my_content_wrapper.dart';
import 'package:coin_barrel/widgets/my_step_buttons.dart';
import 'package:coin_barrel/widgets/my_text_field.dart';
import 'package:coin_barrel/widgets/my_height.dart';
import 'package:coin_barrel/widgets/my_gap.dart';
import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';

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
            Text(
              S.of(context).productName,
                style: Theme.of(context).textTheme.displayMedium),
            MyGap(multiplier: 2),
            Text(S.of(context).loginWelcome,
                style: Theme.of(context).textTheme.headlineMedium),
            MyGap(),
            Flexible(
                child: MyHeight(
                    allowGrow: true,
                    child: MyTextField(
                      expandsVertically: true,
                      controller: usernameController,
                      hintText: S.of(context).username,
                    ))),
            MyGap(),
            Flexible(
                child: MyHeight(
              allowGrow: true,
              child: MyTextField(
                expandsVertically: true,
                controller: passwordController,
                hintText: S.of(context).password,
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
            MyHeight(child: MyStepButtons(primaryText: Text(S.of(context).login)))
          ],
        ));
  }
}
