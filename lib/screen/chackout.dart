import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sifat_e_commerce/screen/applypar.dart';
import 'package:sifat_e_commerce/screen/orders.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Chackoutpage extends StatefulWidget {
  const Chackoutpage({super.key});
  @override
  State<Chackoutpage> createState() => _ChackoutpageState();
}

late double h, w;
var show = false;
var show2 = false;
var show3 = false;
var show4 = false;

class _ChackoutpageState extends State<Chackoutpage> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: h * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
               Navigator.pop(context);
            },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: kblackcolor,
                          ),
                        ),
                        Text(
                          " Checkout",
                          style: styaltext,
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      " Shipping Address",
                      style: styaltext,
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12, right: 12),
                      height: h * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 2, color: kgreyclr)
                          ],
                          border: Border.all()),
                      child: const Center(
                          child: Text(
                        "Add A New Address",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff111111)),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("Shipping Method",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text(
                      "Available after filling the Shipping Address.",
                      style: TextStyle(color: Color(0xffB1B1B1), fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: Text(
                        "UPI",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff848484)),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/google-pay.png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset("assets/phonepe-logo (1).png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset(
                            "assets/upi-icon@2x.png",
                            height: 15,
                          )
                        ],
                      ),
                      leading: Image.asset(
                        "assets/Group 1632@2x.png",
                        height: 40,
                      ),
                      trailing: Transform.scale(
                        scale: 1,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: kblackcolor,
                            value: show,
                            onChanged: (bool? value) {
                              setState(() {
                                show = !show;
                              });
                            }),
                      )),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                      title: Text(
                        "Paytm Wallet",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff848484)),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: w * 0.01,
                          ),
                          Image.asset("assets/paytm-size.png"),
                        ],
                      ),
                      leading: SvgPicture.asset("assets/Group 1633.svg"),
                      trailing: Transform.scale(
                        scale: 1,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: kblackcolor,
                            value: show2,
                            onChanged: (bool? value) {
                              setState(() {
                                show2 = !show2;
                              });
                            }),
                      )),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                      title: Text(
                        "Credit/Debit Card",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff848484)),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/visa.png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset("assets/rupay.png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset(
                            "assets/mastercard.png",
                            height: 15,
                          )
                        ],
                      ),
                      leading: SvgPicture.asset("assets/Group 1634.svg"),
                      trailing: Transform.scale(
                        scale: 1,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: kblackcolor,
                            value: show3,
                            onChanged: (bool? value) {
                              setState(() {
                                show3 = !show3;
                              });
                            }),
                      )),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                      title: Text(
                        "Net Banking",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff848484)),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/google-pay.png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset("assets/phonepe-logo (1).png"),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Image.asset(
                            "assets/upi-icon@2x.png",
                            height: 15,
                          )
                        ],
                      ),
                      leading: Image.asset(
                        "assets/Group 1632@2x.png",
                        height: 25,
                      ),
                      trailing: Transform.scale(
                        scale: 1,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: kblackcolor,
                            value: show4,
                            onChanged: (bool? value) {
                              setState(() {
                                show4 = !show4;
                              });
                            }),
                      )),
                  Divider(
                    thickness: 2,
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              height: h * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 9, right: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.02,
                    ),
                    const Text(
                      "Shipping Bag",
                      style: TextStyle(color: Color(0xff111111), fontSize: 14),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1 items in you bag",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffB1B1B1)),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: kblackcolor,
                          size: 30,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black26,
                    ),
                    GestureDetector(
                      onTap: () {
                        push(context, Applyscreen());
                      },
                      child: Text(
                        "+ Coupon",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SubTotal",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff383838)),
                        ),
                        Text("\$33.99")
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Savings",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff383838)),
                        ),
                        Text("\$0.00")
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff383838)),
                        ),
                        Text("\$0.00")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (() {
          moveScreen(context, Orderspage());
        }),
        child: Container(
          height: 85,
          color: kwhitecolor,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, top: 5, bottom: 0, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: styaltext,
                    ),
                    Text(
                      "USD \$33.99",
                      style: styaltext,
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: kblackcolor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Palce odear",
                      style: styaltext.copyWith(
                          color: kwhitecolor, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
