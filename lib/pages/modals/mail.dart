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
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/gmail.png',
          fit: BoxFit.contain,
          height: height * 0.2,
        ),
        Text("kaneraky.work@gmail.com",
            overflow: TextOverflow.ellipsis, style: deepPurpleText),
        TextButton(
          onPressed: (() async {
            await Utils.launchUri('mailto:kaneraky.work@gmail.com');
          }),
          child: Text("Send me an email",
              overflow: TextOverflow.ellipsis, style: lightPurpleText),
        )
      ],
    );
  }
}
