// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final GlobalKey<FormState> _formkay=GlobalKey<FormState>();
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkay,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44,vertical:67),
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
              const SizedBox(height: 37,),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0AAB98))),
                    border: const UnderlineInputBorder(borderSide:  BorderSide(color:  Color(0xffB3B3B3))),
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
              const SizedBox(height: 79,),
              const Text("Forget Your Password?",style:  TextStyle(fontSize:14,color:  Colors.grey),textAlign: TextAlign.center),
              const SizedBox(height: 26,),
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
                    child: const Text("Sugn Up",
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
              const SizedBox(height: 27,),
              const Text("Or",style:  TextStyle(fontSize:14,color:  Colors.grey),textAlign: TextAlign.center)
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
