import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/theme/fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height * 0.05,
          child: FittedBox(
            child: Text(
              'About me',
              style: boldText,
            ),
          ),
        ),
        Text(
          '''Greetings! I'm Raky, a passionate Full Stack Developer. My journey in the world of development has been an exciting one, allowing me to create and implement innovative web and mobile applications.\n\n My work revolves around problem-solving and innovation. I thrive on tackling complex challenges, whether it's designing user-friendly interfaces, complex features with AI, fixing bugs, or crafting efficient algorithms. My primary goal is to deliver seamless and delightful digital experiences for users while ensuring that applications are robust and scalable.\n\n I possess expertise in both front-end and back-end development.  I'm dedicated to crafting responsive and visually appealing user interfaces. In the realm of back-end development, building server-side applications and designing efficient APIs are among my core strengths. Database management is another area where I excel. I have experience with both SQL and NoSQL databases, prioritizing data integrity and performance optimization. DevOps practices are also a part of my skill set. I'm familiar with CI/CD pipelines, Docker, Github actions, Gitlab and cloud platforms like AWS for seamless deployment and scaling of applications.\n\n Collaboration and effective communication are fundamental to my work. I thrive in team environments and firmly believe that strong teamwork is the key to successful projects. Staying updated with the latest industry trends and technologies is a commitment I hold dear. I'm dedicated to continuous learning and growth, ensuring that I deliver cutting-edge solutions. Please feel free to explore my portfolio to see some of the exciting projects I've had the privilege to work on. If you're interested in discussing potential collaborations or have any questions, don't hesitate to reach out. Thank you for visiting my portfolio, and I look forward to connecting with you.''',
          style: lightText.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
          textAlign: TextAlign.justify,
          softWrap: true,
        )
      ],
    );
  }
}
