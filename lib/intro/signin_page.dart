import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_login/providers/reusable_widgets/resuable_widgets.dart';
import 'package:firebase_login/intro/signup_page.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailTextController=TextEditingController();
  TextEditingController _passwordTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:
          [
            Colors.indigo.shade50,
            Colors.lightBlue.shade50,
            Theme.of(context).colorScheme.primary,
          ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height*0.2, 20, 80),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/sign-language.png"),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: reusableTextField('Username', Icons.person_outline, false,_emailTextController),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: reusableTextField('Password',Icons.lock_outline , true, _passwordTextController),
                ),
                SizedBox(height: 20,),
                signInButton(context, true, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){
                    Navigator.pushReplacementNamed(context,'create_home');
                  }).onError((error,stackTrace){
                    print('Error ${error.toString()}');
                  });

                }),
                SizedBox(height: 10,),
                signUpOptions(),
              ],
            ),),
        ),
      ),
    );
  }
  Row signUpOptions(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account! ",style: TextStyle(color: Colors.black38),),
        GestureDetector(
            onTap: (){
                Navigator.pushNamed(context,'signup_page');
            },
            child: Text('Register',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),))
      ],
    );
  }
}
