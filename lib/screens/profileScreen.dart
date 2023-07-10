// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

import '../const/const_colors.dart';
class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  bool Gender = true;
  String select_item="Owner";
  List <String> item_dropdown=["Owner","Doctor","Keeper"];
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
          "Profile",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                InkWell(
                  onTap: (){
                  },
                  child: const CircleAvatar(
                    backgroundImage:AssetImage("asset/images/pngwing 3.png"),
                    radius: 50,
                  ),
                ),
                InkWell(
                  onTap: (){
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 15,
                    child: Center(child: Image.asset("asset/images/Pencil.png")),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text(
              "User Name",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: TextFormField(
                  cursorColor: bascolore,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: "Name",
                      hintStyle: const TextStyle(
                          color: Colors.black26, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1))),
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: TextFormField(
                  cursorColor: bascolore,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: "Name@gmail.com",
                      hintStyle: const TextStyle(
                          color: Colors.black26, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1))),
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: TextFormField(
                  cursorColor: bascolore,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: "*********************",
                      hintStyle: const TextStyle(
                          color: Colors.black26, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 1))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Gender",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  width: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Gender = true;
                        });
                      },
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Gender == true
                                ? const Color(0xff0AAB98)
                                : const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(18)),
                        child: Icon(
                          Icons.male,
                          size: 25,
                          color: Gender == true ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Gender = false;
                        });
                      },
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Gender == false
                                ? const Color(0xff0AAB98)
                                : const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(18)),
                        child: Icon(
                          Icons.female,
                          size: 25,
                          color:
                          Gender == false ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 11),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Type",style: TextStyle(fontSize: 18,color: Colors.black),),
                SizedBox(
                  height:60,
                  width:120,
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 0,color: Colors.white),),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 0,color: Colors.white),),
                        filled: true,
                        fillColor: const Color(0xff0AAB98),
                      ),
                      dropdownColor: Colors.grey,
                      value: select_item,
                      iconSize: 14,
                      iconDisabledColor: Colors.white,
                      elevation: 4,
                      iconEnabledColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      items: item_dropdown.map((item) =>DropdownMenuItem<String>(
                          value: item,
                          child: Text(item.toString(),style: const TextStyle(color: Colors.black,fontSize: 14),)
                      )).toList(),
                      onChanged:(value){
                        setState(() {
                          select_item=value!;
                        });
                      }),
                )
              ],
            ),
          ),

        ],
      ),

    );
  }
}
