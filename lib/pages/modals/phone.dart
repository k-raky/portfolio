import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

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
              child: Text("Here is my number", style: lightPurpleText)),
        ),
        VerticalDivider(
          thickness: 5.0,
          color: deepPurple,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.phone,
              size: 50,
              color: green,
            ),
            AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
              TypewriterAnimatedText(
                "00 221 77 282 01 71",
                speed: const Duration(milliseconds: 60),
                textStyle: deepPurpleText.copyWith(fontSize: 50),
              )
            ]),
            TextButton(
                onPressed: (() async {
                  await Utils.launchUri('tel:00221772820171');
                }),
                child: Text(
                  "Call me",
                  style: lightPurpleText.copyWith(fontSize: 30),
                ))
          ],
        )
      ],
    );
  }
}
