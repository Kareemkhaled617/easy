import 'package:flutter/material.dart';

import '../component/DefualtTextform.dart';
import '../resources/assets_manager.dart';

class DashBord extends StatelessWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            decoration: const BoxDecoration(
                color: Color(0xff5669ff),
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(25),
                    bottomStart: Radius.circular(25))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const CircleAvatar(
                        child: Image(
                          image: AssetImage(ImageAssets.avatar),
                        ),
                      ),
                      Column(
                        children: [
                        Row(

                          children: const [
                            Text(
                                'Current Location',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',

                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            Icon(Icons.arrow_drop_down_sharp ),
                          ],
                        ),
                        const Text(
                            'Dubai, USA',
                            style: TextStyle(
                              fontFamily: 'Montserrat',

                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                      const Icon(Icons.line_weight_sharp)
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: DefaultTextForm(
                        icon: const Icon(Icons.search),
                        hint: 'Search',
                        type: TextInputType.text,
                        onTap: () {},
                        controller: search,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
