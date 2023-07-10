import 'package:flutter/material.dart';

import '../const/const_colors.dart';
class Get_premium extends StatefulWidget {
  const Get_premium({Key? key}) : super(key: key);

  @override
  State<Get_premium> createState() => _Get_premiumState();
}

class _Get_premiumState extends State<Get_premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
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

                ]),
          image: DecorationImage(
              image: AssetImage("asset/images/white-stars-transparent-background-25 1.png"),
              alignment: Alignment.topCenter
          ),

        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                  ),
                  Text("Get Premium",style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 24),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset("asset/images/Bolt.png",),
                  ),
                  Text("No Ads",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset("asset/images/Bolt.png",),
                  ),
                  Text("Extra Informations About Pets",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: Container(
                height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffEBEBEB),

                  ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 month",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),
                            Text("""\$12.99""",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Price \$12.99",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),
                            Text("""Monthly""",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xffEBEBEB),

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("6 months",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),
                            Text("""\$8.99""",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Price \$53.99",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),
                            Text("""Monthly""",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xffEBEBEB),

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("12 months",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),
                            Text("""\$5.83""",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Price \$69.99",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),
                            Text("""Monthly""",style: TextStyle(
                                color:Colors.grey,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
            GestureDetector(child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:Colors.white,

                ),
                child: const Text("restore purchases",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            ),)



          ],
        ),
      ),
    );
  }
}
