// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';
class TapBar_sign_in_up extends StatelessWidget {
  const TapBar_sign_in_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 200,
            centerTitle: true,
            title: Image.asset(
              "asset/images/Logo.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            bottom: const TabBar(
              indicatorColor: Color(0xff0AAB98),
              indicatorWeight: 4,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [Sign_In(), sign_up()],
          ),
        ));
  }
}
