import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';

class Mail extends StatelessWidget {
  const Mail({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: width * 0.3,
          child: FittedBox(
              child: Text("Here is my Email", style: lightPurpleText)),
        ),
        VerticalDivider(
          thickness: 5.0,
          color: deepPurple,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRect(
              child: Image.asset('images/gmail.png'),
            ),
            AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
              TypewriterAnimatedText(
                "kaneraky12@gmail.com",
                speed: const Duration(milliseconds: 60),
                textStyle: deepPurpleText.copyWith(fontSize: 50),
              )
            ]),
            TextButton(
                onPressed: (() async {
                  await Utils.launchUri('mailto:kaneraky12@gmail.com');
                }),
                child: Text(
                  "Send me an email",
                  style: lightPurpleText.copyWith(fontSize: 30),
                ))
          ],
        )
      ],
    );
  }
}
