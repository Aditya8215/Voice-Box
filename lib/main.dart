import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_login/create_home.dart';
import 'package:firebase_login/intro/splash_screen.dart';
import 'package:firebase_login/pages/home_page.dart';
import 'package:flutter/animation.dart';
import 'package:firebase_login/intro/signup_page.dart';
import 'package:firebase_login/intro/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'home_page':(context)=>HomePage(),
        'signin_page':(context)=>SignInPage(),
        'signup_page':(context)=>SignUpPage(),
        'create_home':(context)=>CreateHome(),
      },
      title: 'Voice Box',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF006F88),
        primary:Color(0xFF8AAAE5),
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
      home:CreateHome(),
    );
  }
}
