import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Database extends StatelessWidget {
  Database({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'images/mysqlLogo.png', 'name': 'images/mysqlName.png'},
    {'logo': 'images/mysqlLogo.png', 'name': 'images/myadminName.png'},
    {'logo': 'images/postgresLogo.png', 'name': 'images/postgresName.png'},
    {'logo': 'images/postgresLogo.png', 'name': 'images/pgadminName.png'},
    {'logo': 'images/firebaseLogo.png', 'name': 'images/firebaseName.png'},
  ];

  final title = "Database Management";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
