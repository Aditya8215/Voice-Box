import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_projects/create_home.dart';
import 'package:splash_projects/inro/splash_screen.dart';
import 'package:splash_projects/pages/home_page.dart';
import 'package:flutter/animation.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Box',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF2F3C7E),
        primary: Colors.lightBlue,
          secondary: Color(0xFFFBEAEB),
        tertiary: Color(0xFF8AAAE5),
        //    , #FFFFFF,
        ),
        textTheme:TextTheme(
            titleLarge:TextStyle(fontSize: 23,fontWeight: FontWeight.w800),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor:Colors.blue.shade100,
          titleTextStyle:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF8AAAE5),
          unselectedItemColor: Color(0xFF8AAAE5),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            color: Color(0xFF8AAAE5),
            size: 27,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black38,
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
