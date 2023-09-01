import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Mobile extends StatelessWidget {
  Mobile({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'images/reactLogo.png', 'name': 'images/rnName.png'},
    {'logo': 'images/flutterLogo.png', 'name': 'images/flutterName.png'},
  ];

  final title = "Mobile Development";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
