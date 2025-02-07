import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/functions/utils.dart';
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

    final size = Utils().isMobile(context) ? 100.0 : 200.0;
    final psize = Utils().isMobile(context) ? 20.0 : 50.0;

    return Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        margin: EdgeInsets.all(psize),
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
          padding: EdgeInsets.all(0),
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          alignment: Alignment.center,
          onPressed: onPress,
          icon: FaIcon(
            icon,
            color: color,
            size: 40,
          ),
        ));
  }
}
