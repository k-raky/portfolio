import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/pages/main/bubbles.dart';
import 'package:portfolio/pages/main/bye.dart';
import 'package:portfolio/pages/main/projects.dart';
import 'package:portfolio/theme/colors.dart';

class PageContent extends StatefulWidget {
  const PageContent({super.key});

  @override
  State<PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<PageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(children: [Bubbles(), Projects(), Bye()]),
      ),
    );
  }
}
