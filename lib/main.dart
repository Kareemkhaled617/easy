import 'package:flutter/material.dart';

import 'screens/elmhn.dart';
import 'screens/home_user.dart';
import 'screens/profile.dart';
import 'screens/sign_up.dart';
import 'screens/splash.dart';

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
      home:  DashBordUser(),
    );
  }
}
