import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/components/sized_text.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedTextWidget(
            width: width * 0.2, style: deepPurpleText, content: "Raky Kane"),
        SizedTextWidget(
            width: width * 0.2,
            style: lightPurpleText,
            content: "Full Stack Developer"),
        SizedBox(
          width: width * 0.2,
          child: Image.asset(
            'assets/images/memoji.png',
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
