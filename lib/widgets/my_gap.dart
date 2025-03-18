import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyGap extends StatelessWidget {
  final double multiplier;

  const MyGap({super.key, this.multiplier = 1});

  @override
  Widget build(BuildContext context) {
    return Gap(16 * multiplier);
  }
}
