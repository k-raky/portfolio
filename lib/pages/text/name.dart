import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
          TyperAnimatedText(
            "Raky Kane",
            speed: const Duration(milliseconds: 60),
            textStyle: deepPurpleText.copyWith(fontSize: 100),
          )
        ]),
        AnimatedTextKit(
            isRepeatingAnimation: false,
            pause: const Duration(milliseconds: 30),
            animatedTexts: [
              TyperAnimatedText(
                "Full Stack Mobile Developer",
                speed: const Duration(milliseconds: 60),
                textStyle: lightPurpleText.copyWith(fontSize: 40),
              ),
            ]),
        ClipRect(
          child: Image.asset('images/memoji.png'),
        )
      ],
    );
  }
}
