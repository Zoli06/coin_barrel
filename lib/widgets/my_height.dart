import 'package:flutter/material.dart';

class MyHeight extends StatelessWidget {
  final Widget child;

  const MyHeight({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: child,
    );
  }
}
