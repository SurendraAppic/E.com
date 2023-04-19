// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/Orderdetail.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Cancelodersscreen extends StatefulWidget {
  const Cancelodersscreen({super.key});

  @override
  State<Cancelodersscreen> createState() => _CancelodersscreenState();
}

var h, w;
TextEditingController Name = TextEditingController();

class _CancelodersscreenState extends State<Cancelodersscreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        titleSpacing: 1,
        elevation: 0,
        leading: InkWell(
            onTap: (){
               Navigator.pop(context);
            },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: kblackcolor,
          ),
        ),
        backgroundColor: kwhitecolor,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel Order",
            style: styaltext,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.03, right: w * 0.03, top: h * 0.02),
                height: h * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kwhitecolor,
                    boxShadow: [BoxShadow(blurRadius: 1, color: kgreyclr)]),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: w * 0.255,
                              decoration: BoxDecoration(
                                  color: kwhitecolor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: kgreyclr),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: kgreyclr)
                                  ]),
                              child: Image.asset("assets/upi-icon@2x.png"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Product Name",
                                style: styaltext.copyWith(
                                  fontSize: 22,
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
                                height: 7,
                              ),
                              Text(
                                "XXX",
                                style: styaltext.copyWith(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.03, right: w * 0.03, top: h * 0.02),
                height: h * 0.15,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 1, color: kgreyclr)],
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: Name,
                  cursorColor: kblackcolor,
                  maxLines: 10,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                      border: InputBorder.none,
                      fillColor: Colors.white12,
                      filled: true,
                      hintText: "Cancellation Reason :",
                      hintStyle:
                          styaltext.copyWith(fontSize: 10, color: kgreyclr)),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              SizedBox(
                height: h * 0.09,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: kblackcolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {
                        moveScreen(context, OrderDetailscreen());
                      },
                      child: Text("SUBMIT",
                          style: styaltext.copyWith(
                              color: kwhitecolor, fontSize: 15))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
