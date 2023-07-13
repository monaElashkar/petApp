import 'package:flutter/material.dart';
import 'package:pets_world/const/const_colors.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notifi=[{
    "title":"Thank you for using the application.. We wish you an enjoyable experience",
    "date":"1h ago"
  }];
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
          "Notifications",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body:Center(
        child:notifi.length==0?
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/images/ring notification.png",fit: BoxFit.fill,),
            SizedBox(height: 20,),
            Text("No Notifications yet!",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(height: 20,),
            Text("We’ll notify you once we have ",style: TextStyle(fontSize: 20, color: Colors.grey),),
            Text("something for you",style: TextStyle(fontSize: 20, color: Colors.grey),),

          ],
        ):
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: notifi.length,
              itemBuilder:(context,index){
            return Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 5,backgroundColor: bascolore,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded( 
                              child: Text("${notifi[index]["title"]}",
                                style: TextStyle(fontSize: 13,  color: Colors.black),
                                maxLines: 2,textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Expanded(child: Text("${notifi[index]["date"]}",style: TextStyle(fontSize: 13, color: Colors.grey),)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        )

        ,
      ) ,
    );
  }
}
