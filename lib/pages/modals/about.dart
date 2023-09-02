import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/theme/fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "About me",
          style: deepPurpleText,
        ),
        Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Sed ac justo in libero feugiat ullamcorper. Quisque commodo malesuada orci, 
        id tincidunt lorem lacinia id. Nulla nec lectus ac urna laoreet pharetra. 
        Etiam vestibulum, justo nec bibendum dictum, justo eros sodales tortor, 
        ac varius ipsum velit eget arcu Pellentesque posuere, arcu eget finibus hendrerit, 
        lectus justo bibendum justo, et feugiat lectus urna a ligula. Nam commodo arcu a nulla 
        scelerisque, eget tristique tortor gravida. Sed sit amet semper ipsum, eu elementum elit. 
        Maecenas nec ultricies ligula. Nulla facilisi. Vivamus ac congue enim. Vestibulum ante ipsum 
        primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a interdum erat. 
        Sed et odio vel augue consectetur congue vel in purus. Curabitur eget diam eget augue c
        onsectetur lacinia nec ut nulla. Suspendisse eget mi sed ex posuere blandit a vel neque.
''',
          style: lightText,
        )
      ],
    );
  }
}
