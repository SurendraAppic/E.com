// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

final List _relate = [
  'india',
  'jaipur',
  'ajmer',
];

final List _relat1 = [
  'india',
  'jaipur',
  'ajmer',
];
String? relation;
String? relation1;
String? relation2;
String? relation3;

var h, w;

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        titleSpacing: 1,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          ),
        ),
        backgroundColor: kwhitecolor,
        elevation: 0,
        title: Text(
          "Contact US",
          style: styaltext,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(30),
              height: h * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
                  color: kwhitecolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  DropdownButton(
                    underline: Container(),
                    value: relation2,
                    hint: Text(
                      "Subject*",
                      style: TextStyle(
                        color: kgreyclr,
                        fontFamily: "poppins",
                        fontSize: 14,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    icon: SizedBox(
                      // width: w * 0.7,
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: kgreyclr,
                        size: 30,
                      ),
                    ),
                    items: _relate.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        relation2 = value.toString();
                      });
                    },
                  ),
                  Divider(
                    thickness: 1,
                    color: kgreyclr,
                  ),
                  // TextFormField(),
                  DropdownButton(
                    underline: Container(),
                    value: relation1,
                    hint: Text(
                      "Sub-Subject*",
                      style: TextStyle(
                        color: kgreyclr,
                        fontFamily: "poppins",
                        fontSize: 14,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    icon: SizedBox(
                      // width: w * 0.7,
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: kgreyclr,
                        size: 30,
                      ),
                    ),
                    items: _relate.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        relation1 = value.toString();
                      });
                    },
                  ),
                  Divider(thickness: 1, color: kgreyclr),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Mobile No.*"),
                  ),

                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: " Describe your issue....*",
                        contentPadding: EdgeInsets.only(top: 30, bottom: 70)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  customutton(
                      color: kblackcolor,
                      width: double.infinity,
                      height: h * 0.07,
                      text: Text(
                        "Sumit",
                        style: TextStyle(
                            fontSize: 14,
                            color: kwhitecolor,
                            fontWeight: FontWeight.bold),
                      ),
                      press: () {
                        showModalBottomSheet(
                            isDismissible: false,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40)),
                            ),
                            context: context,
                            builder: (context) => Continue());
                      }),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Center(
                      child: Text("We will respond you as soon as possible!")),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: w * 0.41,
                        color: kgreyclr,
                      ),
                      Text(" OR "),
                      Container(
                        height: 1,
                        width: w * 0.41,
                        color: kgreyclr,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Call US :",
                    style: styaltext.copyWith(fontSize: 14, color: kgreyclr),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Email :",
                    style: styaltext.copyWith(fontSize: 14, color: kgreyclr),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Timings:"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Mon-Sat:"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Sat-Sun"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "*NOTE",
                    style: TextStyle(color: kredclr),
                  ),
                  Text(
                    ":On Saturday you can reach us through support or you can leave your query using the above form.,",
                    style: TextStyle(fontSize: 18, color: kgreyclr),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
