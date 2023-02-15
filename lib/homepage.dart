import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    const SizedBox(
                      width: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.search),
                        Image(image: AssetImage('images/mannn.png'))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 134,
                height: 16,
              ),
              Row(
                children: [
                  Text('Dear OLAITAN'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text('Keep track of your schedules and activities today.'),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 56,
                child: ListView.builder(
                    itemCount: activities.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 56,
                              width: 136,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: index == 1 ? 9 : 15),
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(activities[index]['image']!)),
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                activities[index]['text']!,
                                style: TextStyle(color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 5,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack buildContainer({
    required String image,
    required String text,
  }) {
    return Stack(
      children: [
        Container(
          height: 56,
          width: 136,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              // color: Colors.black,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
        Positioned(
         right: 5,
          bottom: 5,
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

List<Map<String, String>> activities = [
  {
    'image': 'images/rect1.png',
    'text': 'An organized life is a peaceful life.',
  },
  {
    'image': 'images/Rec2.png',
    'text': "Time isn’t the main thing, it’s the only\nthing.",
  },
  {
    'image': 'images/rec3.png',
    'text': 'Turn worrying into planning.',
  }
];
