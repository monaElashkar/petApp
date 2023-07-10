import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,


        backgroundColor: Color(0xff0AAB98),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.short_text),label: "Stethoscope"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Bag"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            landscapeLayout:BottomNavigationBarLandscapeLayout.linear ,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xff0AAB98),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",

                activeIcon:Tab(child: Icon(Icons.account_circle_rounded)),
              ),
              BottomNavigationBarItem(icon: Icon(Icons.short_text),label: "home",),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "home",),
              BottomNavigationBarItem(icon: Icon(Icons.chat),label: "home",),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "home",),
            ],

          ),
        ),
      ),
    );
  }
}