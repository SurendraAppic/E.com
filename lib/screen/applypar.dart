import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/chackout.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Applyscreen extends StatefulWidget {
  const Applyscreen({super.key});

  @override
  State<Applyscreen> createState() => _ApplyscreenState();
}

var h, w;

class _ApplyscreenState extends State<Applyscreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
          titleSpacing: 1,
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
            "Apply Promotion",
            style: styaltext,
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: h * 0.065,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kwhitecolor,
                      boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: w * 0.55,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: InputBorder.none,
                              hintText: "Apply Promotion",
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            moveScreen(context, Chackoutpage());
                          },
                          child: Container(
                            height: 70,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                                color: kblackcolor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "APPLY",
                                style: styaltext.copyWith(color: kwhitecolor),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "By applying a promotion code you agree to our",
                  style: styaltext.copyWith(
                      color: kgreyclr,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Text(
                  "Terms & Conditions",
                  style: styaltext.copyWith(
                      color: Color(0xff0C3565),
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
              ],
            ),
          ),
          Container(
            height: h * 0.04,
            width: double.infinity,
            // width: w * 0.25,
            decoration: BoxDecoration(
                color: kblackcolor, borderRadius: BorderRadius.circular(0)),
            child: Padding(
              padding: EdgeInsets.only(left: w * 0.04, top: h * 0.01),
              child: Text(
                "Promotion",
                style: styaltext.copyWith(color: kwhitecolor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
