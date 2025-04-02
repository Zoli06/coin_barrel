import 'package:coin_barrel/widgets/my_content_wrapper.dart';
import 'package:coin_barrel/widgets/my_step_buttons.dart';
import 'package:coin_barrel/widgets/my_text_field.dart';
import 'package:coin_barrel/widgets/my_height.dart';
import 'package:coin_barrel/widgets/my_gap.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final PageController pageViewController = PageController();

  var _obscurePassword = true;
  var _activePageIndex = 0;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Column(children: [
        MyHeight(
            allowGrow: true,
            child: MyTextField(
              hintText: "Username",
              controller: usernameController,
              expandsVertically: true,
            )),
        MyGap(),
        MyHeight(
            allowGrow: true,
            child: MyTextField(
              hintText: "Password",
              controller: passwordController,
              obscureText: _obscurePassword,
              onToggleObscure: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              showToggleObscure: true,
              expandsVertically: true,
            )),
      ]),
      Column(children: [
        MyHeight(
            allowGrow: true,
            child: MyTextField(
              hintText: "Email",
              expandsVertically: true,
            )),
        MyGap(),
        MyHeight(
            allowGrow: true,
            child: MyTextField(
              hintText: "Phone number",
              expandsVertically: true,
            )),
        MyGap(),
        MyHeight(
            allowGrow: true,
            child: MyTextField(
              hintText: "Address",
              expandsVertically: true,
            )),
      ]),
    ];

    return MyContentWrapper(
        showMascot: true,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Coin Barrel",
                  style: Theme.of(context).textTheme.displayMedium),
              MyGap(multiplier: 2),
              Text("Create an account",
                  style: Theme.of(context).textTheme.headlineMedium),
              MyGap(),
              ExpandablePageView(
                  controller: pageViewController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _activePageIndex = index;
                    });
                  },
                  children: pages),
              MyGap(),
              MyHeight(
                  child: MyStepButtons(
                      primaryText: _activePageIndex == pages.length - 1
                          ? const Text("Register")
                          : const Text("Next"),
                      onPressBack: () {
                        pageViewController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      onPressPrimary: () {
                        pageViewController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      }))
            ]));
  }
}
