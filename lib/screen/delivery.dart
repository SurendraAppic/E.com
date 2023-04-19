// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/add_address.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import '../utlish/textstyal.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

var h, w;

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        titleSpacing: -0,
        // leadingWidth,
        title: Text(
          "Delivery",
          style: styaltext,
        ),
        backgroundColor: kwhitecolor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, (context));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  context: context,
                  builder: (context) => Shipping());
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 1, color: kgreyclr)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 20, right: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping to:",
                              style: styaltext.copyWith(
                                  fontSize: 11, color: kgreyclr),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Pakistan",
                              style: styaltext,
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: kgreyclr,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: h * 0.22,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kwhitecolor,
                boxShadow: [BoxShadow(blurRadius: 1, color: kgreyclr)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: styaltext,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(". FREE STANDARD SHIPPING - ON ORDERS OVER AFD18002",
                          style: styaltext.copyWith(fontSize: 13)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              // left: 20.0,
                              // right: 20,
                              ),
                          child: Table(
                            border: TableBorder.all(
                                borderRadius: BorderRadius.circular(0),
                                color: Color(0xff377785)),
                            children: [
                              TableRow(children: [
                                SizedBox(
                                    height: h * 0.06,
                                    child: Center(
                                        child: Text(
                                      "Shipping\n Method",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                                SizedBox(
                                    height: h * 0.05,
                                    child: Center(
                                        child: Text(
                                      "Shipping Time",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                                SizedBox(
                                    height: h * 0.05,
                                    child: Center(
                                        child: Text(
                                      "Shipping Time",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                              ])
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              // left: 20.0,
                              // right: 20,
                              ),
                          child: Table(
                            // defaultColumnWidth: FlexColumnWidth(),
                            border: TableBorder.all(
                                borderRadius: BorderRadius.circular(0),
                                color: Color(0xff377785)),
                            children: [
                              TableRow(children: [
                                SizedBox(
                                    height: h * 0.06,
                                    // width: 50,
                                    child: Center(
                                        child: Text(
                                      "Standard\n Shipping",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                                SizedBox(
                                    height: h * 0.05,
                                    child: Center(
                                        child: Text(
                                      "Estimated to be\n delivered on 02/17/2023.",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                                SizedBox(
                                    height: h * 0.05,
                                    child: Center(
                                        child: Text(
                                      "AED47.38",
                                      style: TextStyle(
                                          color: kprimclr,
                                          fontWeight: FontWeight.bold),
                                    ))),
                              ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Receiving time = Processing time + Shipping time",
                  style: styaltext.copyWith(color: kgreyclr, fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Learn More",
                  style:
                      styaltext.copyWith(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
