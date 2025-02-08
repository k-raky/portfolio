import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Raky Kane",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: deepPurpleText.copyWith(fontSize: 50)),
        Text("Mobile App Developer",
            overflow: TextOverflow.ellipsis,
            style: lightPurpleText.copyWith(fontSize: 40)),
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
