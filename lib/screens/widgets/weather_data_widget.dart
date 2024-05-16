import 'package:flutter/material.dart';

class WeatherDataWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  const WeatherDataWidget({
    super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
         imageUrl,
          scale: 8,
        ),
         Column(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              time,
              style: const TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
