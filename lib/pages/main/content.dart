import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/bubble.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/pages/modals/about.dart';
import 'package:portfolio/pages/modals/database.dart';
import 'package:portfolio/pages/modals/design.dart';
import 'package:portfolio/pages/modals/mail.dart';
import 'package:portfolio/pages/modals/mobile.dart';
import 'package:portfolio/pages/modals/phone.dart';
import 'package:portfolio/pages/modals/web.dart';
import 'package:portfolio/pages/text/skills.dart';
import 'package:portfolio/pages/text/projects.dart';
import 'package:portfolio/pages/text/name.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class PageContent extends StatefulWidget {
  const PageContent({super.key});

  @override
  State<PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<PageContent> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  bool _showSkills = false;

  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  _scrollListener() {
    final double itemHeight =
        MediaQuery.of(context).size.height * 0.08; // Adjust the value as needed
    const double crossAxisSpacing = 30.0;
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
      _showSkills = _scrollPosition > 6 * (itemHeight + crossAxisSpacing);
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  final List<Widget> text = <Widget>[
    Name(),
    Education(),
    Name(),
    Education(),
  ];

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
              padding: EdgeInsets.all(height * 0.05),
              width: width * 0.8,
              height: height * 0.8,
              child: content),
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
    final width = MediaQuery.of(context).size.width;

    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: width * 0.4,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500), // Animation duration
            child: _showSkills ? Skills() : Name(),
            switchInCurve: Curves.ease, // Fade in animation curve
          ),
        ),
        Container(
            width: width * 0.5,
            child: GridView.count(
              padding: EdgeInsets.all(10),
              childAspectRatio: (.5 / .3),
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              controller: _scrollController,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: [
                Bubble(
                    icon: FontAwesomeIcons.at,
                    color: Colors.red,
                    onPress: () => showModal(context, Mail())),
                Bubble(
                  icon: FontAwesomeIcons.linkedin,
                  color: Colors.blueAccent,
                  onPress: (() async {
                    await Utils.launchUri('https://linkedin/rakykane');
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
                    await Utils.launchUri('file:/assets/files/RakyKane_CV.pdf');
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
                  color: grey,
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
                Bubble(
                  icon: FontAwesomeIcons.toolbox,
                  color: pink,
                  onPress: () => showModal(context, PhoneNumber()),
                ),
                Bubble(
                  icon: FontAwesomeIcons.laptopCode,
                  color: pink,
                  onPress: () => showModal(context, PhoneNumber()),
                ),
                Bubble(
                  icon: FontAwesomeIcons.mobileScreenButton,
                  color: pink,
                  onPress: () => showModal(context, PhoneNumber()),
                ),
                Bubble(
                  icon: FontAwesomeIcons.database,
                  color: pink,
                  onPress: () => showModal(context, PhoneNumber()),
                ),
                Bubble(
                  icon: FontAwesomeIcons.wandMagicSparkles,
                  color: pink,
                  onPress: () => showModal(context, PhoneNumber()),
                ),
              ],
            ))
      ],
    ));
  }
}
