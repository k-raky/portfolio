import 'package:flutter/material.dart';
import 'package:portfolio/components/slideshow.dart';

class Database extends StatelessWidget {
  Database({super.key});

  final List<Map<String, String>> imgList = [
    {
      'logo': 'assets/images/mysqlLogo.png',
      'name': 'assets/images/mysqlName.png'
    },
    {
      'logo': 'assets/images/mysqlLogo.png',
      'name': 'assets/images/myadminName.png'
    },
    {
      'logo': 'assets/images/postgresLogo.png',
      'name': 'assets/images/postgresName.png'
    },
    {
      'logo': 'assets/images/postgresLogo.png',
      'name': 'assets/images/pgadminName.png'
    },
    {
      'logo': 'assets/images/firebaseLogo.png',
      'name': 'assets/images/firebaseName.png'
    },
  ];

  final title = "Database Management";

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      imgList: imgList,
      title: title,
    );
  }
}
