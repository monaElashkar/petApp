import 'package:flutter/material.dart';

import '../const/const_colors.dart';
class keeperScreen extends StatefulWidget {
  Map obj = {};
  keeperScreen({Key? key,required this.obj}) : super(key: key);

  @override
  State<keeperScreen> createState() => _keeperState();
}

class _keeperState extends State<keeperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bascolore,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 10,
                        color: Colors.grey,
                      )
                      ],
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Image.asset(widget.obj["image"]),

                  ),
                  Text("${widget.obj["name"]}",
                    style: TextStyle(fontSize: 30, color: Colors.white),),
                  Text("${widget.obj["Veterinary Specialist"]}",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text("${widget.obj["ID_Number"]}",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Image.asset("asset/images/Vector (1).png"),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Image.asset("asset/images/Vector.png"),
                        ),
                      ],),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select Date", style: TextStyle(fontSize: 18),),
                        SizedBox(
                          height: 120,
                          child: ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 80,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "sat", style: TextStyle(fontSize: 16),),
                                      Text(
                                        "08", style: TextStyle(fontSize: 16),),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 20,);
                              },
                              itemCount: 7),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text("Select Schedule Time", style: TextStyle(
                              fontSize: 18)),
                        ),
                        SizedBox(
                          height: 120,
                          child: 
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("From",style: TextStyle(fontSize: 18),),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey
                                ),
                                child: Text("DD/MM",style: TextStyle(fontSize: 16),),
                              ),
                              Text("To",style: TextStyle(fontSize: 18),),
                              Container(
                                alignment: Alignment.center,
                                height:40,
                                width:120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey
                                ),
                                child: Text("DD/MM",style: TextStyle(fontSize: 16),),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          flex:1,
                          child: GestureDetector(child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              width: 250,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: bascolore,

                              ),
                              child: Text("Book An Appointment",style: TextStyle(fontSize: 18,color: Colors.white),),
                            ),
                          ),),
                        )
                      ],
                    ),
                  ),

                )),
          ],
        ),
      ),
    );
  }
}
