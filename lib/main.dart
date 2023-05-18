import 'package:esay/screens/onboardin.dart';
import 'package:esay/screens/sign_up.dart';
import 'package:esay/screens/splash.dart';
import 'package:flutter/material.dart';

import 'screens/dashbord.dart';
import 'screens/select_role.dart';
import 'screens/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home:   DashBord(),
    );
  }
}
