import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      'screen': 'assets/images/cashapp.png',
      'desc': 'Money transfer mobile app',
      'stack': 'Flutter',
      'link': null
    },
    {
      'screen': 'assets/images/loopAlarm.png',
      'desc': 'A countdown timer loop application',
      'stack': 'Flutter',
      'link': null
    },
    {
      'screen': 'assets/images/portfolio.png',
      'desc': 'Portfolio',
      'stack': 'Flutter',
      'link': null
    },
  ];

  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Some projects",
              overflow: TextOverflow.ellipsis,
              style: deepPurpleText.copyWith(fontSize: 50)),
          Text("Slide to discover them all",
              overflow: TextOverflow.ellipsis, style: lightText),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.previousPage();
                },
                icon: FaIcon(
                  FontAwesomeIcons.chevronLeft,
                  color: black,
                  size: 40,
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    height:
                        Utils().isMobile(context) ? height * 0.4 : height * 0.8,
                    viewportFraction: 1,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: projectsInfo
                      .map((item) => Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                item['screen']!,
                                fit: BoxFit.fill,
                                width: width * 0.6,
                              ),
                              Text(
                                item['desc'] ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: lightText.copyWith(fontSize: 30),
                              ),
                              Visibility(
                                  visible: item['link'] != null,
                                  child: TextButton(
                                      onPressed: (() async {
                                        await Utils.launchUri(item['link']!);
                                      }),
                                      child: Text(
                                        "Visiter",
                                        style: lightPurpleText.copyWith(
                                            fontSize: 30),
                                      ))),
                              Text(
                                "Stack : ${item['stack']}",
                                overflow: TextOverflow.ellipsis,
                                style: deepPurpleText.copyWith(fontSize: 30),
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.nextPage();
                },
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: black,
                  size: 40,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
