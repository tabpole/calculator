import 'package:flutter/material.dart';

import '../../../core/values/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final bool textAccentColor;
  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.textAccentColor = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        fixedSize: const Size(70, 70),
        shape: const CircleBorder(),
        elevation: 10,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          color: textAccentColor ? TextColorManager.ACCENT : TextColorManager.ACCENT_ALT,
        ),
      ),
    );
  }
}
