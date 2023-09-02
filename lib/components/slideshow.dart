import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/functions/utils.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slideshow extends StatelessWidget {
  final List<Map<String, String>> imgList;
  final String title;
  const Slideshow({
    super.key,
    required this.imgList,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.08,
          child: FittedBox(child: Text(title, style: lightPurpleText)),
        ),
        Container(
            width: width,
            height: height * 0.5,
            child: CarouselSlider(
              options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2)),
              items: imgList
                  .map((item) => Container(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            item['name']!,
                            fit: BoxFit.contain,
                            width: width * 0.3,
                            height: height * 0.2,
                          ),
                          VerticalDivider(
                            thickness: 0.5,
                            color: lightPurple,
                          ),
                          Image.asset(
                            item['logo']!,
                            fit: BoxFit.contain,
                            width: width * 0.3,
                            height: height * 0.2,
                          ),
                        ],
                      )))
                  .toList(),
            )),
      ],
    );
  }
}
