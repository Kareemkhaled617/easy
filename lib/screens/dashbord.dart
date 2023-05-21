import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../component/DefualtTextform.dart';
import '../resources/assets_manager.dart';
import 'MLBotScreen.dart';
import 'bot_chat.dart';
import 'orders.dart';
import 'profile.dart';

class DashBord extends StatelessWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 7.5,
              decoration: const BoxDecoration(
                  color: Color(0xff5669ff),
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(25),
                      bottomStart: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          child: Image(
                            image: AssetImage(ImageAssets.avatar),
                          ),
                        ).onTap((){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));

                        }),
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
                                Icon(Icons.arrow_drop_down_sharp),
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
                        Row(
                          children: [
                            const Icon(Icons.chat).onTap((){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> MLBotSupportComponent()));

                            }),

                            const Icon(Icons.line_weight_sharp),
                          ],
                        )
                      ],
                    ),
                  ),
                  5.height,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
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
            Container(
              padding: const EdgeInsetsDirectional.all(16.0),
              margin:
                  const EdgeInsetsDirectional.only(top: 16, end: 16, start: 16),
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                  color: const Color(0xffffcd55),
                  borderRadius: BorderRadiusDirectional.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Performers',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0),
                      child: const Image(
                        image: AssetImage(ImageAssets.avatar),
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.all(8.0),
                  margin: const EdgeInsetsDirectional.all(8),
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color(0xff5669ff),
                      borderRadius: BorderRadiusDirectional.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius:
                                    BorderRadiusDirectional.circular(20)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0),
                              child: const Image(
                                image: AssetImage(ImageAssets.bag),
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'All Orders',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ).onTap((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Orders()));

                }),
                Container(
                  padding: const EdgeInsetsDirectional.all(8.0),
                  margin: const EdgeInsetsDirectional.all(8),
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color(0xffff6d6c),
                      borderRadius: BorderRadiusDirectional.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius:
                                    BorderRadiusDirectional.circular(20)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0),
                              child: const Image(
                                image: AssetImage(ImageAssets.location),
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Orders Map',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Top Categoties',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.arrow_right_alt_outlined,size: 40,)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff00a9ce), width: 4),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0),
                                child: const Image(
                                  image: AssetImage(ImageAssets.clanner),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Cleaning',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '+490 workers',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff6b7aed), width: 4),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0),
                                child: const Image(
                                  image: AssetImage(ImageAssets.work),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Repair & \nConstruction',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '+490 workers',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffffcd55), width: 4),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0),
                                child: const Image(
                                  image: AssetImage(ImageAssets.chair),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Tourism & \nEntertainment',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '+490 workers',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Best Performers',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      image:const DecorationImage(image: AssetImage(ImageAssets.worker),
                        fit: BoxFit.fill

                      ),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0),
                            child: const Image(
                              image: AssetImage(ImageAssets.clanner),
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Row(
                                children: const [
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(Icons.star,color: Color(0xffffcd55),)
                                ],
                              ),
                              const Text(
                                '32 reviews, 1225 orders',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      image:const DecorationImage(image: AssetImage(ImageAssets.worker),
                        fit: BoxFit.fill

                      ),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0),
                            child: const Image(
                              image: AssetImage(ImageAssets.clanner),
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Row(
                                children: const [
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(Icons.star,color: Color(0xffffcd55),)
                                ],
                              ),
                              const Text(
                                '32 reviews, 1225 orders',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 16, end: 16, start: 16),
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      image:const DecorationImage(image: AssetImage(ImageAssets.worker),
                        fit: BoxFit.fill

                      ),
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0),
                            child: const Image(
                              image: AssetImage(ImageAssets.clanner),
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Row(
                                children: const [
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(Icons.star,color: Color(0xffffcd55),)
                                ],
                              ),
                              const Text(
                                '32 reviews, 1225 orders',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
