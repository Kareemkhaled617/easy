import 'package:flutter/material.dart';

import '../component/custom_paint.dart';
import '../resources/assets_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List image = [
    ImageAssets.onBoarding1,
    ImageAssets.onBoarding1,
    ImageAssets.onBoarding1,
    ImageAssets.onBoarding1,
  ];

  final List title = [
    'Place any orders and get feedback on them',
    'Place any orders and get feedback on them',
    'Place any orders and get feedback on them',
    'Place any orders and get feedback on them',
  ];

  final List supTitle = [
    'Post your order and choose the best offer for you',
    'Post your order and choose the best offer for you',
    'Post your order and choose the best offer for you',
    'Post your order and choose the best offer for you',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 570,
              child: PageView.builder(
                  itemCount: image.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(image[index]),
                            height: 400,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              title[index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            supTitle[index],
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.all(3),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: currentIndex == index ? Colors.black : Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: Size(80, (80 * 1.6696428571428572).toDouble()),
                      painter: RPSCustomPainter(),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
            // const SizedBox(height: 30,)
          ],
        ),
      ),
    ));
  }
}
