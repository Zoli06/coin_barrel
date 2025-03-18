import 'package:flutter/material.dart';

import 'my_gap.dart';
import 'my_height.dart';

class MyStepButtons extends StatelessWidget {
  final Text primaryText;
  final void Function()? onPressBack;
  final void Function()? onPressPrimary;

  const MyStepButtons(
      {super.key,
      required this.primaryText,
      this.onPressBack,
      this.onPressPrimary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyHeight(
            child: AspectRatio(
                aspectRatio: 1,
                child: IconButton.filledTonal(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: onPressBack ?? () => {}
                ))),
        MyGap(),
        Expanded(
            child: MyHeight(
          child: FilledButton(
            onPressed: onPressPrimary ?? () => {},
            child: primaryText,
          ),
        ))
      ],
    );
  }
}
