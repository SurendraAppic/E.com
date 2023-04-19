// ignore_for_file: unused_import, must_be_immutable

import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sifat_e_commerce/inbody.dart/congratulations.dart';
import 'package:sifat_e_commerce/inbody.dart/profile.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
import 'package:http/http.dart' as http;

String token = "";

class Varification extends StatefulWidget {
  String phone;
  Varification({required this.phone, super.key});
  @override
  State<Varification> createState() => _VarificationState();
}

TextEditingController varifiaction0 = TextEditingController();
TextEditingController varifiaction1 = TextEditingController();
TextEditingController varifiaction2 = TextEditingController();
TextEditingController varifiaction3 = TextEditingController();
String show = "";

class _VarificationState extends State<Varification> {
  late double h, w;
  var resUrl = 'https://myworkdesk.tech/development/1mantra/api/verify_otp';
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
          titleSpacing: 1,
          title: Text(
            "Verification Code",
            style: styaltext,
          ),
          backgroundColor: kwhitecolor,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.2,
              ),
              Row(children: [
                SizedBox(width: w * 0.150),
                SizedBox(
                  height: 50,
                  width: 70,
                  child: TextFormField(
                    controller: varifiaction0,
                    onChanged: ((value) => {
                          if (value.length == 1)
                            {FocusScope.of(context).nextFocus()}
                        }),
                    decoration: InputDecoration(
                        hintText: "____",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      controller: varifiaction1,
                      onChanged: ((value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()},
                            if (value.length != 1)
                              {FocusScope.of(context).previousFocus()}
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    )),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      controller: varifiaction2,
                      onChanged: ((value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()},
                            if (value.length != 1)
                              {
                                FocusScope.of(context)
                                    .focusInDirection(TraversalDirection.left)
                              }
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    )),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      controller: varifiaction3,
                      onChanged: ((value) => {
                            if (value.length != 1)
                              {
                                FocusScope.of(context)
                                    .focusInDirection(TraversalDirection.left)
                              }
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ))
              ]),
              SizedBox(
                height: h * 0.02,
              ),
              const Text(
                "Resend code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: h * 0.07,
              ),
              customutton(
                color: kblackcolor,
                width: double.infinity,
                height: h * 0.07,
                text: Text('Continue',
                    style: TextStyle(fontSize: 14, color: kwhitecolor)),
                press: () {
                  // Get.to(() => Congratulations());
                  //Get.snackbar("title", "message");
                  // Get.defaultDialog(title: "sjfosno");
                  show = varifiaction0.text +
                      varifiaction1.text +
                      varifiaction2.text +
                      varifiaction3.text;
                  otpsifit(widget.phone, show);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Congratulations()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> otpsifit(String? phone, otp) async {
    try {
      var response = await http.post(Uri.parse(resUrl), body: {
        'phone': phone,
        'otp': otp,
      });
      print(response.body);
      if (response.statusCode == 200) {
        final data = json.decode((response.body));

        token = data["token"];
        log("tokenn " + token.toLowerCase());
        return data;
      }
    } catch (e) {
      print("   error");
    }
  }
}
