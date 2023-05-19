import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../component/default_botton.dart';
import '../resources/assets_manager.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

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
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(25)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Row(
                            children: const [
                              Text(
                                'Posted: ',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '15.05.2021',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Until: ',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '16.05.2021',
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
                      Image.asset(
                        'assets/images/f1.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Сurrent Bid: ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '350 AED',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        '300 - 400AED',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Apartment Cleaning',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        'A competitive type of auction in which participants compete for a contract, offering each time a price lower than that of competitors',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 7,
                  ),
                  Column(
                    children:  [
                      Row(
                        children: const [
                          Icon(Icons.shopping_bag_outlined,color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text(
                            'Cleaning',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.my_location_outlined,color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text(
                            'Dubai, JBR, Sadaf 4',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: const [
                          Icon(MaterialCommunityIcons.clock_outline,color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text(
                            '19:00',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: const [
                          Icon(MaterialCommunityIcons.wallet_outline,color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text(
                            'Cash -',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'payment method',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),

                        ],
                      ),
                    ],
                  )
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(
                        image: AssetImage(ImageAssets.man),
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 5,)
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultButton(
                title: 'Make a Bid',
                onTap: () {},
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
