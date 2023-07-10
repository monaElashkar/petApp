// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
class dogScreen extends StatefulWidget {
  const dogScreen({Key? key}) : super(key: key);

  @override
  State<dogScreen> createState() => _dogScreenState();
}

class _dogScreenState extends State<dogScreen> {
  List Dog= [
    {"image": "asset/images/dog2.png", "title": "Golden Retriever"},
    {"image": "asset/images/dog1.png", "title": "Rottweiler"},
    {"image": "asset/images/dog3.png", "title": "German Shepherd"},
    {"image": "asset/images/dog4.png", "title": "Pitbull"},
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
                      Dog[index]["image"],
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Positioned(
                  bottom:35,
                  left: 10,
                  child: Text(
                    Dog[index]["title"],
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ]
          ),
        );
      },
      itemCount: Dog.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
