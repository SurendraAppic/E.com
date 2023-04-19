// ignore_for_file: prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/signup.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

late double h, w;

class _WellcomeState extends State<Wellcome> {
  PageController pageController = PageController();
  var presentpage = 0;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFBF9F9),
        body: Padding(
          padding: EdgeInsets.only(left: w * 0.07, right: w * 0.07),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: h * 0.6,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        onPageChanged: (value) {
                          setState(() {
                            presentpage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Center(
                            child: GestureDetector(
                              onTap: () {
                                if (presentpage < 2) {
                                  pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                } else {
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => SignUp(),
                                  //     ));
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.all(w * .020),
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff000000)
                                            .withOpacity(.3),
                                        blurRadius: 7.0,
                                      ),
                                      BoxShadow(
                                          color: const Color(0xff000000)
                                              .withOpacity(.3),
                                          offset: const Offset(0, 7),
                                          blurRadius: 7.0,
                                          spreadRadius: 0),
                                    ]),
                                alignment: Alignment.bottomCenter,
                                height: h * 0.55,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Get started",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    SizedBox(
                                      width: w * 0.5,
                                      child: const Text(
                                        "We aim to solve all your requests related to cars. Let’s start with the services first",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.06,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => buildDot(index: index),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(
                            index: 0,
                          ),
                        ));
                  },
                  child: Container(
                    height: h * 0.07,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),

                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(.29),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(
                            index: 1,
                          ),
                        ));

                    setState(() {});
                  },
                  child: Container(
                    height: h * 0.07,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(.29),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: const Color(0xff111111),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/Group 7.png"),
                    Image.asset("assets/Group 9.png"),
                    Image.asset("assets/Group 4532.png")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.only(right: 8),
      height: h * 0.01,
      width: h * 0.01,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: presentpage == index
              ? const Color(0xff000000)
              : const Color.fromARGB(255, 146, 134, 157)),
    );
  }
}
