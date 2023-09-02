import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Design extends StatelessWidget {
  Design({super.key});

  final List<Map<String, String>> imgList = [
    {
      'logo': 'assets/images/canvaLogo.png',
      'name': 'assets/images/canvaName.png'
    },
    {
      'logo': 'assets/images/figmaLogo.png',
      'name': 'assets/images/figmaName.png'
    },
    {
      'logo': 'assets/images/flflowLogo.png',
      'name': 'assets/images/flflowName.png'
    },
    {
      'logo': 'assets/images/framerLogo.png',
      'name': 'assets/images/framerName.png'
    },
  ];

  final title = "Design";

  final content =
      "Proficient in UML, Trello, Jira, and Scrum methodologies. Skilled in using tools like StarUML for designing robust software architectures and collaborating effectively with teams through agile workflows.";

  @override
  Widget build(BuildContext context) {
    return Slideshow(imgList: imgList, title: title, content: content);
  }
}
