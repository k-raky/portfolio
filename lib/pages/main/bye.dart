import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/theme/fonts.dart';

class Bye extends StatelessWidget {
  const Bye({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bye.png',
            fit: BoxFit.contain,
            width: 200,
          ),
          Text(
            'Bye',
            style: lightText.copyWith(fontSize: 60),
          ),
        ],
      ),
    );
  }
}
