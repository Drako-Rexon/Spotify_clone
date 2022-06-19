import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  const RegularText({
    Key? key,
    required this.text,
    this.textSize = 12,
    this.isBold = false,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String text;
  final double textSize;
  final bool isBold;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: textColor,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
