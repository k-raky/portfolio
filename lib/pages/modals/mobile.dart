import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Mobile extends StatelessWidget {
  Mobile({super.key});

  final List<Map<String, String>> imgList = [
    {'logo': 'assets/images/reactLogo.png', 'name': 'assets/images/rnName.png'},
    {
      'logo': 'assets/images/flutterLogo.png',
      'name': 'assets/images/flutterName.png'
    },
  ];

  final title = "Mobile Development";

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      imgList: imgList,
      title: title,
    );
  }
}
