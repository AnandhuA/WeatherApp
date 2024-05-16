import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(1.5, -0.2),
          child: Container(
            height: 350,
            width: 350,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1.5, -0.2),
          child: Container(
            height: 350,
            width: 330,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1.2),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.orange,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 100,
            sigmaY: 100,
          ),
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: child,
        )
      ],
    );
  }
}
