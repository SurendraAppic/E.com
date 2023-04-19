import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/profile.dart';
import 'package:sifat_e_commerce/screen/add_address.dart';

import 'package:sifat_e_commerce/screen/contex.dart';
import 'package:sifat_e_commerce/screen/drower/about_us.dart';
// import 'package:sifat_e_commerce/screen/drower/contex.dart';
import 'package:sifat_e_commerce/screen/drower/faq.dart';
import 'package:sifat_e_commerce/screen/drower/privacy_policy.dart';
import 'package:sifat_e_commerce/screen/drower/terms_&_conditions.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Drowerscreeen extends StatefulWidget {
  const Drowerscreeen({super.key});

  @override
  State<Drowerscreeen> createState() => _DrowerscreeenState();
}

class _DrowerscreeenState extends State<Drowerscreeen> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.menu,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Recent Orders",
                      style: TextStyle(
                          color: Color(0xff241332),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Color(0xff241332),
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                  height: h * 0.48,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h * 0.04,
                        ),
                        SizedBox(
                          height: h * 0.3,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: h * 0.2,
                                    width: w * 0.3,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: kblackcolor),
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage("assets/shoping.png")),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 2, color: kgreyclr),
                                      ],
                                    ),
                                  ),
                            
                                  Text(
                                    "PRODU....",
                                    style: styaltext.copyWith(fontSize: 15),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: h * 0.05,
                        ),
                        Row(
                          children: [
                            Text(
                              "Hi,",
                              style: styaltext.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            ),
                            Text(
                              abc,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const CircleAvatar(
                              minRadius: 10,
                              backgroundImage:
                                  AssetImage("assets/Group 4842.png"),
                            ),
                            SizedBox(
                              width: w * 0.6,
                            ),
                            InkWell(
                              onTap: () {
                                moveScreen(context, Add());
                              },
                              child: const Text(
                                "Addresses",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.09,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: kgreyclr,
                          offset: Offset(01, 01))
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.04,
                    ),
                    const CircleAvatar(
                      minRadius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.access_alarm),
                    ),
                    SizedBox(
                      width: w * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        push(context, Contactpage());
                      },
                      child: const Text(
                        "Contact US",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>))
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: kgreyclr,
                    )
                  ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "Help & Support",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  push(context, About());
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: kgreyclr,
                            offset: Offset(01, 01))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "About Us",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Terms()));
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: kgreyclr,
                            offset: Offset(01, 01))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Pravaciscreen()));
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: kgreyclr,
                            offset: Offset(01, 01))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  push(context, faq());
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: kgreyclr,
                            offset: Offset(01, 01))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "FAQ",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (context) => deletsdilog());
                },
                child: Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: kgreyclr,
                            offset: Offset(01, 01))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 0.04,
                      ),
                      const CircleAvatar(
                        minRadius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.access_alarm),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      const Text(
                        "Log Out",
                        style: TextStyle(
                            color: Color(0xff241332),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.009,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
