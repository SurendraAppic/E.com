import 'package:flutter/material.dart';

import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class PROMOscreen extends StatefulWidget {
  const PROMOscreen({super.key});

  @override
  State<PROMOscreen> createState() => _PROMOscreenState();
}

var h, w;
TextEditingController Name = TextEditingController();

class _PROMOscreenState extends State<PROMOscreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: kwhitecolor,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: kblackcolor,
            ),
          ),
          title: Text(
            "PROMO",
            style: styaltext,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.9,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.4,
                    width: double.infinity,
                    color: kblackcolor,
                  ),
                  Center(
                    child: Text(
                      "Title",
                      style: styaltext.copyWith(fontSize: 31),
                    ),
                  ),
                  Center(
                    child: Text(
                      "50% OFF on all orders",
                      style: styaltext.copyWith(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFBFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(blurRadius: 2, color: kgreyclr)
                          ]),
                      child: Center(child: Text("Valid Till: 27th December")),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("  Description"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: kgreyclr)
                          ],
                          color: Color(0xffFAF7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: Name,
                        cursorColor: kblackcolor,
                        maxLines: 10,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 9),
                            border: InputBorder.none,
                            fillColor: Colors.white12,
                            filled: true,
                            hintText:
                                "This pack is essential every 3000 kms or \n6 months whichever is earlier"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Terms & Conditions",
                style: styaltext.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: h * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who May Use the Services?,",
                        style: styaltext.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                          "When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us."),
                      // Text(
                      //     "• Step 1: You may use the Services only if you agree to form a binding contract with us and are not a person barred from receiving services under the laws of the applicable jurisdiction. • Step 2: Our Privacy Policy describes how we handle the information you provide to us when you use our Services.")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
