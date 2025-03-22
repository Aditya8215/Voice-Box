import 'package:flutter/material.dart';

class Alphabet extends StatelessWidget {
  const Alphabet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 120,),
            Image.asset("assets/images/alphabets.avif")
          ],
        ),
      ),
    );

  }
}
