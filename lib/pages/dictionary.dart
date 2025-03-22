import 'package:flutter/material.dart';

class Dictionary extends StatelessWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Text('Dictionary'),
    );
  }
}
