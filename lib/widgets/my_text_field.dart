import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final void Function()? onToggleObscure;
  final bool showToggleObscure;
  final bool expandsVertically;
  final TextInputType keyboardType;

  const MyTextField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.onToggleObscure,
    this.showToggleObscure = false,
    this.expandsVertically = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // assert(!expandsVertically || constraints.maxHeight.isFinite,
      //     "Can't expand vertically if the max height is infinite");

      return TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: showToggleObscure
                ? IconButton(
                    onPressed: onToggleObscure,
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                  )
                : null,
            // So stupid, I'm gonna kms
            contentPadding: expandsVertically
                ? EdgeInsets.symmetric(
                    vertical: ((constraints.minHeight -
                                (TextTheme.of(context).bodyLarge!.fontSize! *
                                    TextTheme.of(context).bodyLarge!.height!)) /
                            2 +
                        4),
                    horizontal: 12)
                : null,
          ));
    });
  }
}
