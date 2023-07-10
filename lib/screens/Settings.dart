import 'package:flutter/material.dart';

import '../const/const_colors.dart';
import 'Get premium.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        title: const Text(
          "Settings",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("asset/images/Page-1.png",),
                ),
                Text("Account",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),)
              ],
            ),
          ),
          Divider(color: Colors.black45,height: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Edit profile",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Change password",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Get premium",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Get_premium();
                      }));
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("asset/images/39-Notification.png",),
                ),
                Text("Notifications",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),)
              ],
            ),
          ),
          Divider(color: Colors.black45,height: 3,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: Switch(onChanged: (bool value) {  },
                      activeColor: bascolore,
                      value: true,),
                    onPressed: () {
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("asset/images/20. Add.png",),
                ),
                Text("More",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),)
              ],
            ),
          ),
          Divider(color: Colors.black45,height: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Language",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Privacy",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
