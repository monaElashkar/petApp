// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pets_world/const/const_colors.dart';
import 'bagScreen.dart';
import 'birdScreen.dart';
import 'catScreen.dart';
import 'chatScreen.dart';
import 'dogScreen.dart';
import 'drawer.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  int index=0;
  @override
  void initState() {

    _tabController=TabController(length: 3, vsync:this);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    TabBar _tabbar(){
      return TabBar(
          automaticIndicatorColorAdjustment: false,
          padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
          onTap: (index){
            this.index=index;
            setState(() {

            });
          },
          controller: _tabController,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:index==0?bascolore: Color(0xffEBEBEB),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cats",style: TextStyle(fontSize: 16,color:index==0?Colors.white: Colors.black),),
                  SizedBox(width: 10,),
                  Image.asset(index==0?"asset/images/cat_w.png":"asset/images/cat_b.png",fit: BoxFit.fill)
                ],
              ),
            ),),
            Tab(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:index==1?bascolore: Color(0xffEBEBEB),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dogs",style: TextStyle(fontSize: 16,color:index==1?Colors.white: Colors.black),),
                  SizedBox(width: 10,),
                  Image.asset(index==1?"asset/images/dog_w.png":"asset/images/dog_b.png",fit: BoxFit.fill)
                ],
              ),
            ),),
            Tab(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:index==2?bascolore: Color(0xffEBEBEB),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Birds",style: TextStyle(fontSize: 16,color:index==2?Colors.white: Colors.black),),
                  SizedBox(width: 10,),
                  Image.asset(index==2?"asset/images/bird_w.png":"asset/images/bird_b.png",fit: BoxFit.fill)
                ],
              ),
            ),),
          ]);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        excludeHeaderSemantics: true,
        backgroundColor: Colors.white,
        toolbarHeight: 150,//height / 6.528,
        leadingWidth: 100,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Container(
                decoration: const BoxDecoration(
                    boxShadow:[ BoxShadow(blurRadius: 10,color: Colors.grey)]
                ),
                child: Material(
                  borderOnForeground: false,
                  type: MaterialType.button,
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  elevation: 8,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 20,
                          decoration: BoxDecoration(
                              color: bascolore,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          height: 4,
                          width: 40,
                          decoration: BoxDecoration(
                              color: bascolore,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        Container(
                          height: 4,
                          width: 20,
                          decoration: BoxDecoration(
                              color: bascolore,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'asset/images/Logo.png',
              height: 80,
              width: 140,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: TextFormField(
                      cursorColor:bascolore,
                      decoration: InputDecoration(
                          fillColor: Color(0xffEBEBEB),
                          filled: true,
                          hintText: "Search for pet...",
                          hintStyle:  TextStyle(color: Colors.black26,fontSize: 16),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search, size: 40,color: Colors.black,),
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.white,width: 1)) ,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.white,width: 1)) ,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.white,width: 1))),

                    )),
              ),
              _tabbar()
            ],
          ),
        ),

      ),
      body:TabBarView(
        controller: _tabController,
        children: const [
          catScreen(),
          dogScreen(),
          birdScreen()
      ],) ,
    );
  }
}
