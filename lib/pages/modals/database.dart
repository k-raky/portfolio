import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Database extends StatelessWidget {
  Database({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'images/bootstrapLogo.svg', 'name': 'images/bootstrapName.svg'},
    {'logo': 'images/reactLogo.svg', 'name': 'images/reactName.svg'},
    {'logo': 'images/flutterLogo.svg', 'name': 'images/flutterName.png'},
    {'logo': 'images/laravelLogo.svg', 'name': 'images/laravelName.svg'},
    {'logo': 'images/phpLogo.svg', 'name': 'images/phpName.svg'},
    {'logo': 'images/springLogo.jpeg', 'name': 'images/springName.png'},
    {'logo': 'images/jeeLogo.jpeg', 'name': 'images/jeeName.png'},
  ];

  final title = "Database Management";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
