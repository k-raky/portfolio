import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Design extends StatelessWidget {
  Design({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'images/canvaLogo.png', 'name': 'images/canvaName.png'},
    {'logo': 'images/figmaLogo.png', 'name': 'images/figmaName.png'},
    {'logo': 'images/flflowLogo.png', 'name': 'images/flflowName.png'},
    {'logo': 'images/framerLogo.png', 'name': 'images/framerName.png'},
  ];

  final title = "Design";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
