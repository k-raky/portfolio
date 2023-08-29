import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/theme/colors.dart';

class Bubble extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function()? onPress;
  const Bubble(
      {super.key, required this.icon, required this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        width: width * 0.2,
        height: height * 0.2,
        decoration: BoxDecoration(
          color: white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color.fromARGB(39, 168, 167, 167),
              offset: Offset(1, 1),
              spreadRadius: 5,
            )
          ],
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: IconButton(
          onPressed: onPress,
          icon: FaIcon(
            icon,
            color: color,
            size: 70,
          ),
        ));
  }
}
