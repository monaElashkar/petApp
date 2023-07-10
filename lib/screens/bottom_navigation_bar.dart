// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:pets_world/screens/bagScreen.dart';
import 'package:pets_world/screens/chatScreen.dart';
import 'package:pets_world/screens/homeScreen.dart';
import 'package:pets_world/screens/profileScreen.dart';

import '../const/const_colors.dart';
import 'drawer.dart';
import 'my_pets.dart';
import 'stethoscopeScreen.dart';
class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {
  @override
  Widget build(BuildContext context) {
    TabBar _tabbar()  {
      return TabBar(
        indicator: const BoxDecoration(
          border:  Border(bottom: BorderSide(color: Colors.white,width: 4,style: BorderStyle.solid))
        ),
        splashBorderRadius: BorderRadius.circular(25),
       indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 2,
        tabs: [
           const Tab(icon: Icon(Icons.home,color: Colors.white,size: 40,)),
          Tab(icon: Image.asset("asset/images/stethoscope.png",fit: BoxFit.fill,)),
          Tab(icon: Image.asset("asset/images/bag.png",fit: BoxFit.fill,)),
          Tab(icon: Image.asset("asset/images/chat.png",fit: BoxFit.fill,)),
           const Tab(icon: Icon(Icons.person,color: Colors.white,size: 40,)),

        ]);
    }
    return DefaultTabController( 
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const TabBarView(
          children: [
            homeScreen(),
            stethoscope(),
            bagScreen(),
            chatScreen(),
            profileScreen()
          ],),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: Material(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(25),
              color:const Color(0xff0AAB98) ,
              child: SizedBox(
                  height: 70,
                  child: _tabbar())),
        ),
        drawer: drawer(),
      ),
    );
  }
}
