// ignore_for_file: camel_case_types, file_names, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:pets_world/screens/DoctorScreen.dart';

import '../const/const_colors.dart';
class stethoscope extends StatefulWidget {
  const stethoscope({Key? key}) : super(key: key);

  @override
  State<stethoscope> createState() => _stethoscopeState();
}
class _stethoscopeState extends State<stethoscope> {
  List doctors =[
    {"image" : "asset/images/doctor.png",
      "name" : "Name",
      "Veterinary Specialist":"Veterinary Specialist",
    "ID_Number":"ID Number"
    }
  ];
  @override
  Widget build(BuildContext context) {
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
          preferredSize: const Size.fromHeight(38),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: TextFormField(
                  cursorColor:bascolore,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: "Search for doctor...",
                      hintStyle:  const TextStyle(color: Colors.black26,fontSize: 16),
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
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20,vertical: 15),
            child:  Text("Doctors",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: ListView.builder(
                itemCount:doctors.length,
                itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Map obj=doctors[index];
                  if(obj!=null){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  DoctorScreen(obj:obj,);
                  }));}else{
                    return;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20,vertical: 15),
                  child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children:[
                        Container(
                          width: double.infinity,
                          height: 185,
                          decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey
                              )],
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            left: 20,
                            child: Image.asset(doctors[index]["image"],fit: BoxFit.fill,height: 200,)),
                        Positioned(
                          right: 0,
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: 180,
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${doctors[index]["name"]}",style: const TextStyle(fontSize: 20),),
                                const SizedBox(height: 20,),
                                Text("${doctors[index]["Veterinary Specialist"]}",style: const TextStyle(fontSize: 13,color: Color(0xff525252)),)
                              ],
                            ),
                          ),
                        )




                      ]
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
