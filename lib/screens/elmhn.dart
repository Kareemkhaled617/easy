import 'package:esay/screens/worker.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'order_details.dart';

class Elmhn extends StatelessWidget {
  Elmhn({Key? key}) : super(key: key);

  List title = ['ميكانيكي', 'سمكري', 'بناء', 'كهربائي', 'لحام', 'خراط', 'نجار'];
  List image = [
    'assets/images/ser1.png',
    'assets/images/ser2.png',
    'assets/images/ser2.png',
    'assets/images/ser2.png',
    'assets/images/ser2.png',
    'assets/images/ser2.png',
    'assets/images/ser3.png'
  ];
  List supTitle = ['يدويه',
    'يدويه',
    'يدويه',
    'يدويه',
    'يدويه',
    'يدويه',
    'يدويه'];
  List icon = [
    'assets/images/f1.png',
    'assets/images/f2.png',
    'assets/images/f2.png',
    'assets/images/f2.png',
    'assets/images/f2.png',
    'assets/images/f2.png',
    'assets/images/f3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'يدويه',
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
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.sort_rounded,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sort',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        image[index],
                        width: 80,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      trailing: Image.asset(
                        icon[index],
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        title[index],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Row(
                        children: [
                          const Icon(Icons.work_outline_rounded),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            supTitle[index],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ).onTap(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ListWorker()));
              }),
              itemCount: title.length,
            ))
          ],
        ),
      ),
    );
  }
}
