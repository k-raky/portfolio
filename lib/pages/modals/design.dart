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

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      imgList: imgList,
      title: title,
    );
  }
}
