import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/bubble.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/pages/modals/mail.dart';
import 'package:portfolio/pages/modals/phone.dart';
import 'package:portfolio/pages/text/skills.dart';
import 'package:portfolio/pages/text/projects.dart';
import 'package:portfolio/pages/text/name.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
      print(_showSkills);
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
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(
              width: width * 0.8, height: height * 0.8, child: content),
          actions: <Widget>[
            TextButton(
              child: const Text('Done'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _showMailModal() {
    showModal(context, Mail());
  }

  _showPhoneModal() {
    showModal(context, PhoneNumber());
  }

  _showAboutMeModal() {
    showModal(context, Skills());
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
                    onPress: _showMailModal),
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
                  onPress: _showPhoneModal,
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
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.diagramProject,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.code,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.laptopCode,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.mobileScreenButton,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.database,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.wandMagicSparkles,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.code,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.laptopCode,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.mobileScreenButton,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.database,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
                Bubble(
                  icon: FontAwesomeIcons.wandMagicSparkles,
                  color: pink,
                  onPress: _showAboutMeModal,
                ),
              ],
            ))
      ],
    ));
  }
}
