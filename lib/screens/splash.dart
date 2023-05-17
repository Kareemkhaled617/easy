import 'package:flutter/material.dart';

import '../component/default_botton.dart';
import '../resources/assets_manager.dart';

class SplashScrean extends StatelessWidget {
  const SplashScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.only(top: 70),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                Image(
                  image: AssetImage(
                    ImageAssets.map,
                  ),
                ),
                Image(image: AssetImage(ImageAssets.logo)),
              ],
            ),
            const Spacer(),
            const Image(image: AssetImage(ImageAssets.smat)),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Downgrade Orders Auction',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultButton(
                title: 'Get Started',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
