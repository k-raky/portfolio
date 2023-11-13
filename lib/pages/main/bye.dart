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
      height: height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bye.png',
            fit: BoxFit.contain,
            width: width * 0.3,
          ),
          SizedBox(
            width: width * 0.1,
            child: FittedBox(
              child: Text(
                'Bye',
                style: lightText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
