// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class birdScreen extends StatefulWidget {
  const birdScreen({Key? key}) : super(key: key);

  @override
  State<birdScreen> createState() => _birdScreenState();
}

class _birdScreenState extends State<birdScreen> {
  List birds= [
    {"image": "asset/images/bird1.png", "title": "Parakeet"},
    {"image": "asset/images/bird2.png", "title": "Cockatiel"},
    {"image": "asset/images/bird3.png", "title": "Dove"},
    {"image": "asset/images/bird4.png", "title": "Canary"},
  ];
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
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
                      birds[index]["image"],
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Positioned(
                  bottom:35,
                  left: 10,
                  child: Text(
                    birds[index]["title"],
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ]
          ),
        );
      },
      itemCount: birds.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
