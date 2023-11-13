import 'package:flutter/material.dart';

class SizedTextWidget extends StatelessWidget {
  final double width;
  final String content;
  final TextStyle style;
  const SizedTextWidget(
      {super.key,
      required this.width,
      required this.style,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          content,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
