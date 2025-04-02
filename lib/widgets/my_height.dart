import 'package:flutter/material.dart';

class MyHeight extends StatelessWidget {
  final Widget child;
  final bool allowGrow;

  const MyHeight({super.key, required this.child, this.allowGrow = false});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 48, maxHeight: allowGrow ? double.infinity : 48),
      child: child,
    );
  }
}
