// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'varificationcode.dart';

// import '../Utilities/images.dart';

class SignUp extends StatefulWidget {
  int index = 0;
  SignUp({Key? key, required this.index}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late double h, w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: DefaultTabController(
          initialIndex: widget.index,
          length: 2,
          child: Column(
            children: [
              SizedBox(
                height: h * 0.09,
              ),
              TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: w * .1),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff111111)),
                indicatorWeight: 2,
                isScrollable: false,
                unselectedLabelColor: const Color(0xff998fa2).withOpacity(.6),
                tabs: const [
                  Tab(
                    text: ('SIGN IN'),
                  ),
                  Tab(text: ('SIGN UP')),
                ],
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Flexible(child: TabBarView(children: [signIn(), signUp(context)]))
            ],
          ),
        ),
      ),
    );
  }

  Column signUp(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: w * .04, right: w * .04),
          width: double.infinity,
          color: const Color(0xffFAF7F7),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.01,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    top: 20,
                  ),
                  hintText: "Name*",
                  hintStyle: TextStyle(
                      color: const Color(0xff241332).withOpacity(0.32)),
                  border: const UnderlineInputBorder(),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    hintText: "Mobile No*",
                    hintStyle: TextStyle(
                        color: const Color(0xff241332).withOpacity(0.32)),
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: const Color(0xff241332).withOpacity(0.32)),
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(
                height: h * 0.06,
              ),
            ],
          ),
        ),
        SizedBox(
          height: h * 0.04,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Varification();
            }));
          },
          child: Container(
            height: h * 0.07,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: w * .04),
            decoration: BoxDecoration(
              color: const Color(0xff111111),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(.29),
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ],
            ),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
          ),
        ),
        SizedBox(
          height: h * 0.05,
        ),
        const Text(
          "Or Continue with",
          style: TextStyle(fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Group 7.png"),
            Image.asset("assets/Group 9.png"),
            Image.asset("assets/Group 4532.png")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(fontSize: 12, color: Color(0xff000000)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.index = 0;
                });
              },
              child: const Text(
                "Log In",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(
          height: h * 0.03,
        ),
        const Text(
          "By clicking continue, I agree to the all the Terms",
          style: TextStyle(color: Color(0xff000000), fontSize: 12),
        )
      ],
    );
  }

  Column signIn() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: w * .04, right: w * .04),
          width: double.infinity,
          color: const Color(0xffFAF7F7),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    hintText: "Mobile No.",
                    hintStyle: TextStyle(
                        color: const Color(0xff241332).withOpacity(0.32)),
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(
                height: h * 0.07,
              )
            ],
          ),
        ),
        SizedBox(
          height: h * 0.04,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Varification()));
          },
          child: Container(
            height: h * 0.07,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: w * .04),
            decoration: BoxDecoration(
                color: const Color(0xff111111),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withOpacity(.29),
                      blurRadius: 4,
                      offset: const Offset(0, 4))
                ]),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
          ),
        ),
        SizedBox(
          height: h * 0.04,
        ),
        const Text(
          "Or Continue with",
          style: TextStyle(color: Color(0xff111111), fontSize: 15),
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
    );
  }
}
