import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  Orders({Key? key}) : super(key: key);

  List title = [
    'Apartment Cleaning',
    'Installation of 5 doors',
    'Refrigerator repair'
  ];
  List image = [
    'assets/images/ser1.png',
    'assets/images/ser2.png',
    'assets/images/ser3.png'
  ];
  List supTitle = ['Cleaning', 'Apartment repair', 'AC Repair'];
  List icon = [
    'assets/images/f1.png',
    'assets/images/f2.png',
    'assets/images/f3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'Orders',
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
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueAccent),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.display_settings_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Category Settings',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )),
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
                  itemBuilder: (context, index) =>
                      Container(
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
                            Row(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      '    Price: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      '350-400',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.blue),
                                    ),
                                    Text(
                                      ' AED',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  itemCount: title.length,
                ))
          ],
        ),
      ),
    );
  }
}
