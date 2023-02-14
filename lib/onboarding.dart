import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(contents[i].image),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        contents[i].text,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Text(
                        contents[i].description,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff222222).withOpacity(0.5)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  contents.length, (index) => buildpage(index, context)),
            ),
          ),
          SizedBox(
            height: 71,
          )
        ],
      ),
    );
  }

  Container buildpage(int indexs, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex != indexs ? Color(0xffC4C4C4) : Colors.blue),
    );
  }
}

class OnboardingContent {
  String image;
  String text;
  String description;

  OnboardingContent(
      {required this.image, required this.text, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'images/onboarding1.png',
      text: 'Planning Made Easy',
      description:
          'Ease up your mind and free up your space. You \nare not overwhelmed, you just need to plan.'),
  OnboardingContent(
      image: 'images/onboarding2.png',
      text: 'Schedule Your Tasks',
      description:
          'Things get a lot better when you properly\n schedule your daily task and activites.'),
  OnboardingContent(
      image: 'images/onboarding3.png',
      text: 'Team Up With Members',
      description:
          'Are work tasks hard to monitor? You can now work\n better and be accountable to your team\n members.'),
];
