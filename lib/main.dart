// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/features/BottomNavBar/bottom_nav_bar.dart';
import 'package:app_2/features/splash/splash_view.dart';
import 'package:app_2/screens/about.dart';
import 'package:app_2/screens/adawat.dart';
import 'package:app_2/screens/ghoraz.dart';
import 'package:app_2/screens/home.dart';
import 'package:app_2/screens/khatawat.dart';
import 'package:app_2/screens/lessons/lesson1/lesson1_1.dart';
import 'package:app_2/screens/lessons/lesson1/lesson1_2.dart';
import 'package:app_2/screens/lessons/lesson2/lesson2_1.dart';
import 'package:app_2/screens/lessons/lesson2/lesson2_2.dart';
import 'package:app_2/screens/lessons/lesson3/lesson3_1.dart';
import 'package:app_2/screens/lessons/lesson3/lesson3_2.dart';
import 'package:app_2/screens/lessons/lesson3/lesson3_3.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_1.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_2.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_3.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_4.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_5.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_6.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_7.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_8.dart';
import 'package:app_2/screens/lessons/lesson4/lesson4_9.dart';
import 'package:app_2/screens/policy.dart';
import 'package:app_2/screens/ta3reef.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
          routes: {
            '/BottomNavBar' : (context) => const BottomNavBar(),
            '/adawat' : (context) => const FirstPage(),
            '/ta3reef' : (context) => const SecondPage(),
            '/ghoraz' : (context) => const ThirdPage(),
            '/khatawat' : (context) => const FourthPage(),
            '/about' : (context) => const AboutPage(),
            '/policy' : (context) => const PolicyPage(),
            '/home' : (context) => const HomePage(),
            '/lesson11' : (context) => const Lesson11(),
            '/lesson12' : (context) => const Lesson12(),
            '/lesson21' : (context) => const Lesson21(),
            '/lesson22' : (context) => const Lesson22(),
            '/lesson31' : (context) => const Lesson31(),
            '/lesson32' : (context) => const Lesson32(),
            '/lesson33' : (context) => const Lesson33(),
            '/lesson41' : (context) => const Lesson41(),
            '/lesson42' : (context) => const Lesson42(),
            '/lesson43' : (context) => const Lesson43(),
            '/lesson44' : (context) => const Lesson44(),
            '/lesson45' : (context) => const Lesson45(),
            '/lesson46' : (context) => const Lesson46(),
            '/lesson47' : (context) => const Lesson47(),
            '/lesson48' : (context) => const Lesson48(),
            '/lesson49' : (context) => const Lesson49(),
          },
        );
      }
    );
  }
}
