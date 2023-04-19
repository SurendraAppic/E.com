// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/main.dart';
import 'package:sifat_e_commerce/screen/add_address.dart';
import 'package:sifat_e_commerce/screen/contex.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Savedscreen extends StatefulWidget {
  const Savedscreen({super.key});

  @override
  State<Savedscreen> createState() => _SavedscreenState();
}

late double h, w;

class _SavedscreenState extends State<Savedscreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        titleSpacing: 1,
        leading: InkWell(
            onTap: (){
               Navigator.pop(context);
            },
          child: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          ),
        ),
        backgroundColor: kwhitecolor,
        elevation: 0,
        title: Text(
          "SavedAddres",
          style: TextStyle(fontSize: 22, color: kblackcolor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                  height: h * 0.22,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 4, color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: h * 0.001,
                        ),
                        const Text(
                          "House/Flat/Office No.*",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.001,
                        ),
                        const Text(
                          "Street*",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.001,
                        ),
                        const Text("City, State, Pin Code",
                            style: TextStyle(
                              color: Colors.black26,
                            )),
                        SizedBox(
                          height: h * 0.001,
                        ),
                        const Text(
                          "Country",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.001,
                        ),
                        const Text(
                          "Phone No. : XXXXXXXXX",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.002,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              minRadius: 13,
                              child: Icon(Icons.shield_sharp),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            const Text(
                              "Default Address",
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                            SizedBox(
                              width: w * 0.4,
                            ),
                            Icon(Icons.run_circle),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => deletsdilog());
                              },
                              child: const Icon(
                                Icons.delete_sharp,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: h * 0.08,
                width: double.infinity,
                child: customutton(
                    width: double.infinity,
                    height: h * 0.08,
                    text: Text(
                      "+ Add New Shipping Address",
                      style: TextStyle(color: kwhitecolor),
                    ),
                    press: () {
                      showDialog(
                          context: context,
                          builder: (context) => deletsdilog());
                    },
                    color: kblackcolor),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
