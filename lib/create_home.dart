import 'package:flutter/material.dart';
import 'package:splash_projects/pages/alphabet.dart';
import 'package:splash_projects/pages/dictionary.dart';
import 'package:splash_projects/pages/profile.dart';
import 'package:splash_projects/pages/home_page.dart';

class CreateHome extends StatefulWidget {
  const CreateHome({super.key});

  @override
  State<CreateHome> createState() => _CreateHomeState();
}

class _CreateHomeState extends State<CreateHome> {
  int currentPage=0;
  List<Widget> pages= [HomePage(),Dictionary(),Alphabet(),Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 13,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          onTap: (value){
            setState(() {
              currentPage=value;
            });
          },
          backgroundColor: Theme.of(context).colorScheme.secondary,
          currentIndex: currentPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Dictionary'),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book),label: 'Alphabet'),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account),label: 'Profile'),
          ]),
    );
  }
}
