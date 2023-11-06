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
      'screen': 'assets/images/jsit.png',
      'desc': 'Back-office application for WooCommerce order management',
      'stack': 'Boostrap, Laravel',
      'link': null
    },
    {
      'screen': 'assets/images/lebal3.png',
      'desc': 'Mobile application for nano-credit management',
      'stack': 'Flutter, SpringBoot, AWS',
      'link': null
    },
    {
      'screen': 'assets/images/niokomom.png',
      'desc': 'E-Commerce Mobile Application',
      'stack': 'React Native, Laravel',
      'link': null
    },
    {
      'screen': 'assets/images/wosto.png',
      'desc': 'A mobile money exchanger application',
      'stack': 'Flutter, Firebase',
      'link': null
    },
    {
      'screen': 'assets/images/loopAlarm.png',
      'desc': 'A countdown timer loop application',
      'stack': 'Flutter',
      'link': null
    },
    {
      'screen': 'assets/images/jairy.png',
      'desc': 'Hair care journal mobile app',
      'stack': 'React Native',
      'link': null
    },
    {
      'screen': 'assets/images/portfolio.png',
      'desc': 'Portfolio',
      'stack': 'Flutter',
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
        height: height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.3,
                child: FittedBox(
                    child: Text('Some projects', style: deepPurpleText)),
              ),
              SizedBox(
                width: width * 0.2,
                child: FittedBox(
                    child:
                        Text('Slide to discover them all', style: lightText)),
              ),
              Container(
                  width: width,
                  height: height * 0.7,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                    ),
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
