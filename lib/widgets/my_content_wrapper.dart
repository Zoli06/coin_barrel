import 'package:flutter/material.dart';

class MyContentWrapper extends StatelessWidget {
  final Widget child;
  final bool showMascot;

  const MyContentWrapper(
      {super.key, required this.child, this.showMascot = false});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 600, minHeight: MediaQuery.of(context).size.height),
            child: Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 15),
                child: child,
              ),
              if (showMascot)
                Positioned(
                  right: -25,
                  bottom: -50,
                  height: 225,
                  width: 225,
                  child: Image.asset("assets/barrel.png"),
                )
            ])));
  }
}
