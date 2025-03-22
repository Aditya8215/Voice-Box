import 'package:flutter/material.dart';

Image logoWidget(String imageName){
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    // color:Colors.white,
  );
}
TextField reusableTextField(String text,IconData icon, bool isPasswordType,TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.blue.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(width: 0,style: BorderStyle.none),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        :TextInputType.emailAddress,
  );
}

Container signInButton(BuildContext context, bool isLogin,Function onTap){
  return Container(
    width: MediaQuery.of(context).size.width*0.6,
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.fromLTRB(0, 10, 0,20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(onPressed: (){
      onTap();
    },
      style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
      child: Text(
        isLogin ? 'Login':'Register',
        style: const TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,
        ),
      ),
    ),
  );
}