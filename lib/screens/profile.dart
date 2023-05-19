import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../resources/assets_manager.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'Orders N 321-12',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.menu_open,
            color: Colors.blueAccent,
            size: 35,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(2),
        child: Column(
          children: [
            Container(

              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                  color: Colors.white,
                 ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child:  const Image(
                        image: AssetImage(ImageAssets.man),
                        height: 50,
                        width: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Daniel Learning',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '3 years in service',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.share,size: 24),
                        Icon(Icons.info,color: Colors.red,size: 24,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                16.height,
                TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  dividerColor: Colors.red,
                  indicatorColor: Colors.yellow,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.grey,

                  labelStyle: primaryTextStyle(size: 14),
                  tabs: const [
                    Tab(text: 'Profile'),
                    Tab(text: 'Reviews about company'),
                    Tab(text: 'Customer reviews'),
                  ],
                ),
                TabBarView(
                  controller: _tabController,
                  children:  [
                    Container(
                      padding: const EdgeInsetsDirectional.all(16.0),
                      margin:
                      const EdgeInsetsDirectional.only(top: 16, end: 16, start: 16),
                      height: MediaQuery.of(context).size.height / 8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadiusDirectional.circular(10)),
                            child: const Image(
                              image: AssetImage(ImageAssets.man),
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Adam Donavan',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Text(
                                    '(32)',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
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
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadiusDirectional.circular(10)),
                            child: const Image(
                              image: AssetImage(ImageAssets.man),
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Adam Donavan',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Text(
                                    '(32)',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
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
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadiusDirectional.circular(10)),
                            child: const Image(
                              image: AssetImage(ImageAssets.man),
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Adam Donavan',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffcd55),
                                  ),
                                  Text(
                                    '(32)',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ).expand(),
              ],
            ).expand()
          ],
        ),
      ),
    ));
  }
}
