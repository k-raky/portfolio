import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/pages/main/appBar.dart';
import 'package:portfolio/pages/main/content.dart';
import 'package:portfolio/theme/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(),
      body: PageContent(),
    );
  }
}
