import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Web extends StatelessWidget {
  Web({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'images/bootstrapLogo.png', 'name': 'images/bootstrapName.png'},
    {'logo': 'images/reactLogo.png', 'name': 'images/reactName.png'},
    {'logo': 'images/flutterLogo.png', 'name': 'images/flutterName.png'},
    {'logo': 'images/laravelLogo.png', 'name': 'images/laravelName.png'},
    {'logo': 'images/phpLogo.png', 'name': 'images/phpName.png'},
    {'logo': 'images/springLogo.png', 'name': 'images/springName.png'},
    {'logo': 'images/jeeLogo.png', 'name': 'images/jeeName.png'},
  ];

  final title = "Web Development";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
