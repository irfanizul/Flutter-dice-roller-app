import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        shadows: [
          Shadow(
            color: Color.fromARGB(255, 59, 126, 0),
            offset: Offset(3, 3),
            blurRadius: 5,
          ),
        ],
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 179, 0),
      ),
    );
  }
}
