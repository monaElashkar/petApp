import 'package:flutter/material.dart';

import 'new_pets.dart';
class my_pets extends StatefulWidget {
  const my_pets({Key? key}) : super(key: key);

  @override
  State<my_pets> createState() => _my_petsState();
}

class _my_petsState extends State<my_pets> {
  List pets =[
    {"image" : "asset/images/cat1.png",
      "name" : "Name",
      "Gender":"Gender",
      "Birthdate":"Birthdate",
      "Age":"Age"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,), onPressed: () {
          Navigator.pop(context);
        }),
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.add_circle_outline,color: Colors.black,size: 25,), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return new_pets();
            }));
          }),
        ],
        title: Text("My Pets",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView.builder(
            itemCount:pets.length,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){

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
                            left:20,
                            child: Image.asset(pets[index]["image"],fit: BoxFit.fill,height:150,)),
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
                                Text("${pets[index]["name"]}",style: const TextStyle(fontSize: 20),),
                                const SizedBox(height: 20,),
                                Text("${pets[index]["Gender"]}",style: const TextStyle(fontSize: 13,color: Color(0xff525252)),),
                                const SizedBox(height: 10,),
                                Text("${pets[index]["Birthdate"]}",style: const TextStyle(fontSize: 13,color: Color(0xff525252)),),
                                const SizedBox(height: 10,),
                                Text("${pets[index]["Age"]}",style: const TextStyle(fontSize: 13,color: Color(0xff525252)),)

                              ],
                            ),
                          ),
                        )




                      ]
                  ),
                ),
              );
            }),
      ),
    );
  }
}
