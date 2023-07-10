import 'package:flutter/material.dart';
import 'package:pets_world/screens/Notifications.dart';
import 'package:pets_world/screens/homeScreen.dart';

import '../const/const_colors.dart';
import 'Settings.dart';
import 'my_pets.dart';
import 'profileScreen.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(100),bottomRight:const Radius.circular(100)),
      child: Drawer(
        backgroundColor: bascolore,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff0AAB98),
                    Color(0xff1BB19F),
                    Color(0xff30B8A8),
                    Color(0xff46C0B1),
                    Color(0xff5EC8BB),
                    Color(0xff74CFC5),
                    Color(0xff8AD7CE),
                    Color(0xffA0DED7),
                    Color(0xffB9E7E1),
                    Color(0xffCFEEEB),
                    Color(0xffE4F6F4),
                    Color(0xffFFFFFF),

                  ])
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const profileScreen();
                        }));
                      },
                      child: const CircleAvatar(
                        backgroundImage:AssetImage("asset/images/pngwing 3.png"),
                        radius: 50,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Name",style: TextStyle(color: Colors.white,fontSize: 24),),
                  ],
                ),
              ),

              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const homeScreen();
                  }));
                },
                leading: const Icon(Icons.home,color: Colors.white,size: 30,),
                title: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const my_pets();
                  }));
                },
                leading:Image.asset("asset/images/Group 242.png",fit: BoxFit.fill,),
                title: const Text("My Pets",style: const TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Notifications();
                  }));
                },
                leading:Image.asset("asset/images/ball.png",fit: BoxFit.fill,),
                title: const Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Settings();
                  }));
                },
                leading: const Icon(Icons.settings,color: Colors.white,size: 30,),
                title: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ListTile(
                onTap: (){},
                leading: Image.asset("asset/images/get_help.png",fit: BoxFit.fill,),
                title: const Text("Get help",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ListTile(
                onTap: (){},
                leading:Image.asset("asset/images/signout.png",fit: BoxFit.fill,),
                title: const Text("Sign out",style:  TextStyle(color: Colors.white,fontSize: 20),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
