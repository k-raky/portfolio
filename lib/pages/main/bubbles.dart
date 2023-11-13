import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/bubble.dart';
import 'package:portfolio/components/sized_text.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/pages/modals/about.dart';
import 'package:portfolio/pages/modals/database.dart';
import 'package:portfolio/pages/modals/design.dart';
import 'package:portfolio/pages/modals/mail.dart';
import 'package:portfolio/pages/modals/mobile.dart';
import 'package:portfolio/pages/modals/phone.dart';
import 'package:portfolio/pages/modals/web.dart';
import 'package:portfolio/pages/text/skills.dart';
import 'package:portfolio/pages/main/projects.dart';
import 'package:portfolio/pages/text/name.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class Bubbles extends StatefulWidget {
  const Bubbles({super.key});

  @override
  State<Bubbles> createState() => _BubblesState();
}

class _BubblesState extends State<Bubbles> {
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  showModal(BuildContext context, Widget content) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return showAnimatedDialog(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 600),
      context: context,
      animationType: DialogTransitionType.scale,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(
              width: width * 0.8, height: height * 0.8, child: content),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Close',
                style: lightPurpleText,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Name(),
        bubbles(context),
      ],
    ));
  }

  Widget bubbles(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        width: width,
        height: height * 0.7,
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(width * 0.02),
          childAspectRatio: isMobile(context) ? (.5 / .3) : (.3 / .5),
          mainAxisSpacing: width * 0.1,
          crossAxisSpacing: isMobile(context) ? height * 0.01 : height * 0.1,
          crossAxisCount: 2,
          scrollDirection: Axis.horizontal,
          children: [
            Bubble(
                icon: FontAwesomeIcons.at,
                color: Colors.red,
                onPress: () => showModal(context, Mail())),
            Bubble(
              icon: FontAwesomeIcons.linkedin,
              color: Colors.blueAccent,
              onPress: (() async {
                await Utils.launchUri('https://www.linkedin.com/in/rakykane/');
              }),
            ),
            Bubble(
              icon: FontAwesomeIcons.github,
              color: Colors.black,
              onPress: (() async {
                await Utils.launchUri('https://github.com/k-raky');
              }),
            ),
            Bubble(
              icon: FontAwesomeIcons.phone,
              color: Colors.green,
              onPress: () => showModal(context, PhoneNumber()),
            ),
            Bubble(
              icon: FontAwesomeIcons.file,
              color: Colors.indigo,
              onPress: (() async {
                await Utils.launchFile('assets/files/RakyKane_CV.pdf');
              }),
            ),
            Bubble(
              icon: FontAwesomeIcons.circleInfo,
              color: pink,
              onPress: () => showModal(context, AboutMe()),
            ),
            Bubble(
              icon: FontAwesomeIcons.laptopCode,
              color: black,
              onPress: () => showModal(context, Web()),
            ),
            Bubble(
              icon: FontAwesomeIcons.mobileScreenButton,
              color: Colors.blueGrey,
              onPress: () => showModal(context, Mobile()),
            ),
            Bubble(
              icon: FontAwesomeIcons.database,
              color: Color.fromARGB(255, 45, 106, 47),
              onPress: () => showModal(context, Database()),
            ),
            Bubble(
              icon: FontAwesomeIcons.wandMagicSparkles,
              color: Colors.purpleAccent,
              onPress: () => showModal(context, Design()),
            ),
          ],
        ));
  }
}
