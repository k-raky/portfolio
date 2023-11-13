import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/sized_text.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/memojiCallme.png',
          fit: BoxFit.contain,
          height: height * 0.3,
        ),
        SizedTextWidget(
            width: width * 0.4,
            style: deepPurpleText,
            content: "00 221 77 282 01 71"),
        TextButton(
            onPressed: (() async {
              await Utils.launchUri('tel:00221772820171');
            }),
            child: SizedTextWidget(
                width: width * 0.2, style: lightPurpleText, content: "Call me"))
      ],
    );
  }
}
