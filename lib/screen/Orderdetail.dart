import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/cancaloder.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
class OrderDetailscreen extends StatefulWidget {
  const OrderDetailscreen({super.key});
  @override
  State<OrderDetailscreen> createState() => _OrderDetailscreenState();
}
var h, w;
class _OrderDetailscreenState extends State<OrderDetailscreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        leadingWidth: 40,
        titleSpacing: -0,
        title: Text(
          "Order Detail",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: w * 0.02),
              height: 40,
              width: double.infinity,
              color: kblackcolor,
              child: Text(
                "Tracking",
                style: styaltext.copyWith(
                    color: kwhitecolor,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: w * 0.02, right: w * 0.02, top: h * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Arriving Tomorrow",
                    style: styaltext.copyWith(fontSize: 14, color: kblackcolor),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: h * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kwhitecolor,
                        boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.2,
                                width: w * 0.155,
                                decoration: BoxDecoration(
                                    color: kwhitecolor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: kgreyclr),
                                    boxShadow: [
                                      BoxShadow(blurRadius: 1, color: kgreyclr)
                                    ]),
                                child: Image.asset(
                                    "assets/NoPath - Copy (9)@2x.png"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              width: w * 0.2,
                              // color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 60,
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
                                  SizedBox(
                                    height: h * 0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      Text(
                                        "View Product",
                                        style: styaltext.copyWith(fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Order Tracking",
                    style: styaltext,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: h * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kwhitecolor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kblackcolor),
                        boxShadow: [BoxShadow(blurRadius: 1, color: kgreyclr)]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: kblackcolor,
                                ),
                                Container(
                                  height: h * 0.15,
                                  width: 1,
                                  color: kblackcolor,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: kblackcolor,
                                ),
                                Container(
                                  height: h * 0.15,
                                  width: 1,
                                  color: kgreyclr,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.02, top: h * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order Placed",
                                    style: styaltext.copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Text(
                                    "Your order has been placed",
                                    style: styaltext.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Text(
                                      "Your item has been shipped. Tracking ID:",
                                      style: styaltext.copyWith(
                                          fontSize: 10,
                                          color: kgreyclr,
                                          fontWeight: FontWeight.normal)),
                                  SizedBox(
                                    height: h * 0.05,
                                  ),
                                  Text(
                                    "Order Placed",
                                    style: styaltext.copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Text(
                                    "Your order has been placed",
                                    style: styaltext.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Text("08:22 AM, 18 January, 2023",
                                      style: styaltext.copyWith(
                                          fontSize: 10,
                                          color: kgreyclr,
                                          fontWeight: FontWeight.normal)),
                                  SizedBox(
                                    height: h * 0.05,
                                  ),
                                  Text(
                                    "Order Placed",
                                    style: styaltext.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text(
                                    "Your order has been placed",
                                    style: styaltext.copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Text("08:22 AM, 18 January, 2023",
                                      style: styaltext.copyWith(
                                          fontSize: 10,
                                          color: kgreyclr,
                                          fontWeight: FontWeight.normal)),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      moveScreen(context, Cancelodersscreen());
                                    },
                                    child: Text(
                                      "Cancel Order",
                                      style: styaltext.copyWith(
                                          color: Color(0xff0C3565)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(
                  top: h * 0.0, left: w * 0.02, right: w * 0.02),
              height: h * 0.045,
              width: double.infinity,
              color: kblackcolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Details",
                    style: styaltext.copyWith(fontSize: 16, color: kwhitecolor),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: kwhitecolor,
                  )
                ],
              ),
            ),
            Container(
              height: h * 0.32,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 5, color: kgreyclr)]),
              child: Container(
                padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                // height: h * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: kwhitecolor,
                    boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle:
                              styaltext.copyWith(fontSize: 15, color: kgreyclr),
                          border: InputBorder.none),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Contact -",
                          hintStyle:
                              styaltext.copyWith(fontSize: 15, color: kgreyclr),
                          border: InputBorder.none),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email -",
                          hintStyle:
                              styaltext.copyWith(fontSize: 15, color: kgreyclr),
                          border: InputBorder.none),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Address -",
                          hintStyle:
                              styaltext.copyWith(fontSize: 15, color: kgreyclr),
                          border: InputBorder.none),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
