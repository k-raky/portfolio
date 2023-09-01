import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Projects extends StatelessWidget {
  Projects({super.key});

  final List<Map<String, String?>> projectsInfo = [
    {
      'screen': 'images/jsit.png',
      'desc': 'Application back-office de gestion de commandes WooCommerce',
      'stack': 'Laravel',
      'link': null
    },
    {
      'screen': 'images/lebal3.png',
      'desc': 'Application mobile de gestion de nano-credits',
      'stack': 'Flutter, SpringBoot, AWS',
      'link': null
    },
    {
      'screen': 'images/niokomom.png',
      'desc': 'Application mobile e-commerce de produits locaux',
      'stack': 'React Native, Laravel',
      'link': null
    },
    {
      'screen': 'images/loopAlarm.png',
      'desc': 'Application mobile repetitrice d\'alarmes',
      'stack': 'Flutter',
      'link': null
    },
    {
      'screen': 'images/jairy.png',
      'desc': 'Application mobile pour suivi capillaire',
      'stack': 'React Native',
      'link': null
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.all(10),
        width: width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.1,
                child: FittedBox(
                    child: Text('Some projects', style: deepPurpleText)),
              ),
              Container(
                  width: width,
                  height: height * 0.8,
                  child: CarouselSlider(
                    options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2)),
                    items: projectsInfo
                        .map((item) => Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  item['screen']!,
                                  fit: BoxFit.contain,
                                  height: height * 0.5,
                                ),
                                SizedBox(
                                  width: width * 0.5,
                                  height: height * 0.04,
                                  child: FittedBox(
                                    child: Text(
                                      item['desc']!,
                                      style: lightText,
                                    ),
                                  ),
                                ),
                                item['link'] != null
                                    ? TextButton(
                                        onPressed: (() async {
                                          await Utils.launchUri(item['link']!);
                                        }),
                                        child: Text(
                                          "Visiter",
                                          style: lightPurpleText.copyWith(
                                              fontSize: 30),
                                        ))
                                    : Container(
                                        height: 0,
                                      ),
                                SizedBox(
                                  width: width * 0.5,
                                  height: height * 0.04,
                                  child: FittedBox(
                                    child: Text(
                                      "Stack : ${item['stack']}",
                                      style: deepPurpleText,
                                    ),
                                  ),
                                ),
                              ],
                            ))
                        .toList(),
                  ))
            ]));
  }
}
