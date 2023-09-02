import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Web extends StatelessWidget {
  Web({super.key});

  final List<Map<String, String>> imgList = [
    {
      'logo': 'assets/images/bootstrapLogo.png',
      'name': 'assets/images/bootstrapName.png'
    },
    {
      'logo': 'assets/images/reactLogo.png',
      'name': 'assets/images/reactName.png'
    },
    {
      'logo': 'assets/images/flutterLogo.png',
      'name': 'assets/images/flutterName.png'
    },
    {
      'logo': 'assets/images/laravelLogo.png',
      'name': 'assets/images/laravelName.png'
    },
    {'logo': 'assets/images/phpLogo.png', 'name': 'assets/images/phpName.png'},
    {
      'logo': 'assets/images/springLogo.png',
      'name': 'assets/images/springName.png'
    },
    {'logo': 'assets/images/jeeLogo.png', 'name': 'assets/images/jeeName.png'},
  ];

  final title = "Web Development";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
