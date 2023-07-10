// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

import '../const/const_colors.dart';

class new_pets extends StatefulWidget {
  const new_pets({Key? key}) : super(key: key);

  @override
  State<new_pets> createState() => _new_petsState();
}

class _new_petsState extends State<new_pets> {
  bool Gender = true;
  String select_item = "Cats";
  List<String> item_dropdown = ["Cats", "Dogs", "Birds"];

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
          "Add Pet",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pet Information",
                style:  TextStyle(fontSize: 20, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Type of pet",
                        style:  TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      SizedBox(
                        height: 60,
                        width: 120,
                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.white),
                              ),
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
                            items: item_dropdown
                                .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item.toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                select_item = value!;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: TextFormField(
                      cursorColor: bascolore,
                      decoration: InputDecoration(
                          fillColor: const Color(0xffEBEBEB),
                          filled: true,
                          hintText: "Thomas",
                          hintStyle: const TextStyle(
                              color: Colors.black26, fontSize: 16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1))),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Gender",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Gender = true;
                            });
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Gender == true
                                    ? const Color(0xff0AAB98)
                                    : const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18)),
                            child: Icon(
                              Icons.male,
                              size: 25,
                              color: Gender == true ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Gender = false;
                            });
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Gender == false
                                    ? const Color(0xff0AAB98)
                                    : const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18)),
                            child: Icon(
                              Icons.female,
                              size: 25,
                              color:
                                  Gender == false ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Birthdate",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 200,
                      child: TextFormField(
                        cursorColor: bascolore,
                        decoration: InputDecoration(
                            fillColor: const Color(0xffEBEBEB),
                            filled: true,
                            hintText: "DD/MM/YYYY",
                            hintStyle: const TextStyle(
                                color: Colors.black26, fontSize: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Age",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 200,
                      child: TextFormField(
                        cursorColor: bascolore,
                        decoration: InputDecoration(
                            fillColor: const Color(0xffEBEBEB),
                            filled: true,
                            hintText: "Age",
                            hintStyle: const TextStyle(
                                color: Colors.black26, fontSize: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1))),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Description",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 100,
                width: 400,
                child: TextFormField(
                  cursorColor: bascolore,
                  decoration: InputDecoration(
                      fillColor: const Color(0xffEBEBEB),
                      filled: true,
                      hintText: "Persian cat, Weighs 4.5 kilos, Have all vaccinations, Eats dry food",
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1))),
                ),
              ),
              GestureDetector(child: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: bascolore,

                  ),
                  child: const Text("Add Pet",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
