// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  final GlobalKey<FormState> _formkay=GlobalKey<FormState>();
  late String name;
  late String email;
  late String password;
  late String Repeat_Password;
  bool Gender=true;
  String select_item="Doctor";
  List <String> item_dropdown=["Doctor","Keeper","Owner"];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkay,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44,vertical: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0AAB98))),
                border: const UnderlineInputBorder(borderSide:  BorderSide(color:  Color(0xffB3B3B3))),
                helperStyle: TextStyle(fontSize: 17,color: Colors.black.withAlpha(30))
              ),
              onChanged: (value){
                email=value;
              },
              validator: (email){
                if (email == null || email.isEmpty) {
                  return "Enter email";
                } else if ((!email.contains("@gmail.com"))) {
                  return "email should contains @gmail.com";
                } else {
                  return null;
                }
              },
            ),
              const SizedBox(height: 22,),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Username",
                    focusedBorder: const UnderlineInputBorder(borderSide:  BorderSide(color: Color(0xff0AAB98))),
                    border: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffB3B3B3))),
                    helperStyle: TextStyle(fontSize: 17,color: Colors.black.withAlpha(30))
                ),
                onChanged: (value){
                  name=value;
                },
                validator: (name){
                  if (name == null || name.isEmpty) {
                    return "Enter name";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 22,),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0AAB98))),
                    border: const UnderlineInputBorder(borderSide: BorderSide(color:  Color(0xffB3B3B3))),
                    helperStyle: TextStyle(fontSize: 17,color: Colors.black.withAlpha(30))
                ),
                onChanged: (value){
                  password=value;
                },
                validator: (password){
                  if (password == null || password.isEmpty) {
                    return "Enter password";
                  } else if (password.length < 6) {
                    return "password less than 6";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 22,),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Repeat Password",
                    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0AAB98))),
                    border: const UnderlineInputBorder(borderSide:  BorderSide(color: Color(0xffB3B3B3))),
                    helperStyle: TextStyle(fontSize: 17,color: Colors.black.withAlpha(30))
                ),
                onChanged: (value){
                  Repeat_Password=value;
                },
                validator: (password){
                  if (password == null || password.isEmpty) {
                    return "Enter password";
                  } else if (password.length < 6) {
                    return "password less than 6";
                  } else if(password!=this.password){
                    return "Repeat Password should be the same as Password";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Gender",style: TextStyle(fontSize: 18,color: Colors.black),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                             InkWell(
                               onTap: (){
                                 setState(() {
                                   Gender=true;
                                 });
                               },
                               child: Container(
                                 height: 36,
                                 width: 36,
                                 decoration: BoxDecoration(
                                   color: Gender==true?const Color(0xff0AAB98): const Color(0xffD9D9D9),
                                   borderRadius: BorderRadius.circular(18)
                                 ),

                                 child: Icon(Icons.male,size: 25,color:Gender==true? Colors.white:Colors.black,),
                               ),
                             ),
                             const SizedBox(width: 12,),
                             InkWell(
                          onTap: (){
                            setState(() {
                              Gender=false;
                            });
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Gender==false?const Color(0xff0AAB98): const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18)
                            ),

                            child: Icon(Icons.female,size: 25,color:Gender==false? Colors.white:Colors.black,),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: InkWell(
                  child: Container(
                    width: 232,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff0AAB98),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: const Text("Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22,color: Colors.white,),),
                  ),
                  onTap:(){
                    if(_formkay.currentState!.validate()==true) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const bottom_navigation_bar();}));
                    }
                  },
                ),
              ),
              const SizedBox(height: 7,),
              const Text("Or",style:  TextStyle(fontSize:14,color: Colors.grey),textAlign: TextAlign.center)
              ,Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.facebook,color: Color(0xff1877F2),size: 43)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.g_mobiledata_rounded,size: 43,))

                  ],
                ),
              )
          ],),
        ),
      ),
    );
  }
}
