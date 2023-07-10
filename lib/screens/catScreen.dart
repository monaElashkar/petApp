// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class catScreen extends StatefulWidget {
  const catScreen({Key? key}) : super(key: key);

  @override
  State<catScreen> createState() => _catScreenState();
}

class _catScreenState extends State<catScreen> {
  List cat = [
    {"image": "asset/images/cat1.png", "title": "Maine Coon"},
    {"image": "asset/images/cat2.png", "title": "Siamese"},
    {"image": "asset/images/cat3.png", "title": "Bengal"},
    {"image": "asset/images/cat4.png", "title": "Persian"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20,right:20,top: 45),
          child: Stack(
              clipBehavior: Clip.none,
            children:[
              Container(
              decoration: BoxDecoration(
                boxShadow: const [BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey
                )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
              Positioned(
                top: -35,
                left: 20,
                child: Center(
                  child: Image.asset(
                    cat[index]["image"],
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Positioned(
                bottom:35,
                left: 10,
                child: Text(
                  cat[index]["title"],
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ]
          ),
        );
      },
      itemCount: cat.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
