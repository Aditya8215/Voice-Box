import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_login/widgets/sign.dart';
import 'package:firebase_login/providers/signCardDetails.dart';
class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 2,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Image.asset("assets/images/sign-language.png",),
              ],
            )
          ),
          title: Text('Voice Box'),
          actions: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 8,),
                  Icon(Icons.account_circle),
                  SizedBox(width: 8,),
                ],
              ),
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.tertiary,
        ),

      ),
      extendBodyBehindAppBar: true,
      body: Container(
        margin: EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 100,),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                enableInfiniteScroll:true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.slowMiddle,
                pauseAutoPlayOnTouch: true,
              ),
              itemCount: signCards.length,
              itemBuilder: (context,index,realIndex){
                final signCard=signCards[index];
                return SignCard(
                  bgColor: Color(0xFFFFFFFF),
                  signImageUrl: signCard['signImageUrl'] as String,
                );
              }
            )
          ],
        ),
      ),

    );
  }
}
