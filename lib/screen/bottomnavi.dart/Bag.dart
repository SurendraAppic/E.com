// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sifat_e_commerce/screen/chackout.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

var h, w;
int _counter = 0;

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        titleSpacing: 1,
        title: Text(
          "Bag",
          style: styaltext,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          ),
        ),
        elevation: 0,
        backgroundColor: kwhitecolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: double.infinity,
              color: kblackcolor,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 5,
                ),
                child: Text(
                  "OFFER TEXT",
                  style: styaltext.copyWith(fontSize: 14, color: kwhitecolor),
                ),
              ),
            ),
            Container(
              height: h * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: w * 0.02,
                      top: 10,
                      right: w * 0.02,
                    ),
                    child: Container(
                      height: h * 0.2,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kblackcolor,
                          image: DecorationImage(
                              image: AssetImage("assets/shoping@2x.png"))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.07, right: w * 0.02, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Text(
                          "Mindful solids Deep Onys Plung...",
                          style: styaltext.copyWith(
                              color: kblackcolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xffEDEDED),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Black/M ",
                                  style: styaltext.copyWith(
                                      color: kblackcolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: kblackcolor,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: h * 0.05,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$33.99",
                              style: styaltext,
                            ),
                            SizedBox(
                              width: w * 0.09,
                            ),
                            Container(
                              height: 40,
                              width: w * 0.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffB1B1B1))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _counter--;
                                          });
                                        },
                                        child: Text("--")),
                                    VerticalDivider(
                                      thickness: 2,
                                    ),
                                    Text(
                                      '$_counter',
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _counter++;
                                          });
                                        },
                                        child: Text("+"))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: h * 0.029,
                left: w * 0.02,
                right: w * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You May Also Like",
                    style: styaltext.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  SizedBox(
                    height: h * 0.29,
                    // width: 150,
                    child: listcoustom(),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "+ Coupon available",
                        style: styaltext.copyWith(
                            fontSize: 15, decoration: TextDecoration.underline),
                      ),
                      Text(
                        "Total \$33.99",
                        style: styaltext.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),
                  SizedBox(
                      height: h * 0.07,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: kblackcolor),
                          onPressed: () {
                            push(context, Chackoutpage());
                          },
                          child: Text(
                            "Checkout",
                            style: styaltext.copyWith(
                                color: kwhitecolor, fontSize: 15),
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
