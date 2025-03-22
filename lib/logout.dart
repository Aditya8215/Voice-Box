import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseAuth.instance.signOut().then((value){
            print('Signed out');
            Navigator.pushNamed(context, 'signin_page');
          }
          );

        },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: Text('Logout',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
