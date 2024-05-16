import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? fontWeight;
  const TextWidget({
    super.key,
    required this.title,
    this.size,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
