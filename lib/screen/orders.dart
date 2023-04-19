// ignore_for_file: unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/Orderdetail.dart';
import 'package:sifat_e_commerce/inbody.dart/notifaction.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Orderspage extends StatefulWidget {
  const Orderspage({super.key});

  @override
  State<Orderspage> createState() => _OrderspageState();
}

var h, w;

class _OrderspageState extends State<Orderspage> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // moveScreen(context, Notifications());
              },
              child: Icon(
                Icons.notification_add,
                color: kblackcolor,
              ),
            ),
          )
        ],
        leadingWidth: 40,
        titleSpacing: -0,
        title: Text(
          "ORDERS",
          style: styaltext.copyWith(fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: kwhitecolor,
        leading: Padding(
          padding: EdgeInsets.only(left: w * 0.02),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kblackcolor,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: h * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kwhitecolor,
                    boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: kgreyclr,
                        ),
                        hintText: "Search",
                        hintStyle: styaltext,
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order History",
                    style: styaltext.copyWith(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Text(
                        "Past 6 Months",
                        style:
                            styaltext.copyWith(color: kgreyclr, fontSize: 14),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: kgreyclr,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        moveScreen(context, OrderDetailscreen());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: h * 0.27,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kwhitecolor,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: w * 0.155,
                                        decoration: BoxDecoration(
                                            color: kwhitecolor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(color: kgreyclr),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 1,
                                                  color: kgreyclr)
                                            ]),
                                        child: Image.asset("assets/bg.png"),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order ID: 5643221343534",
                                          style: styaltext.copyWith(
                                              fontSize: 12, color: kgreyclr),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Product Name",
                                          style: styaltext.copyWith(
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "XXX",
                                          style: styaltext.copyWith(
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Qty: 1",
                                          style: styaltext.copyWith(
                                              fontSize: 12, color: kgreyclr),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.black),
                                          child: Center(
                                            child: Text(
                                              "order placed",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: w * 0.01,
                                        ),
                                        Container(
                                          width: 70,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.black),
                                          child: Center(
                                            child: Text(
                                              "Paid",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // SizedBox(
                                    //   width: w * 0.05,
                                    // ),
                                    Text(
                                      "View Order Details",
                                      style: styaltext.copyWith(fontSize: 15),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: h * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
