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
          'Performer',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Daniel Learning',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '3 years in service',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.share, size: 24),
                        Icon(
                          Icons.info,
                          color: Colors.red,
                          size: 24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                16.height,
                Container(
                  color: Colors.blue,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    dividerColor: Colors.red,
                    indicatorColor: Colors.yellow,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.white,
                    labelStyle: primaryTextStyle(size: 17),
                    tabs: const [
                      Tab(text: 'Profile'),
                      Tab(text: 'Reviews about company'),
                      Tab(text: 'Customer reviews'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 6, end: 6),
                        margin: const EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(16)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '5.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '122 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24),
                                    ),
                                    Text(
                                      'Reviews',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '155 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24),
                                    ),
                                    Text(
                                      'Orders completed ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Professionalism',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 14),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                8.height,
                                Row(
                                  children: [
                                    const Text(
                                      'Timescale',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 14),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                8.height,
                                Row(
                                  children: [
                                    const Text(
                                      'Punctuality',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 14),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffffcd55),
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
            8.height,
            const Text(
              '  Contacts',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            8.height,
            Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsetsDirectional.only(top: 20, start: 6, end: 6),
              margin: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(16)),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/images/message.png'),
                    width: 50,
                  ),
                  6.width,
                  const Flexible(
                    child: Text(
                      "The contractor's contacts are visible only to its customers. If you are interested in the services of this contractor-offer him an order.",
                      style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
