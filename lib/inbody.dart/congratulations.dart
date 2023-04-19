import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/profile.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: h * 0.11),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: w * .2),
                      width: double.infinity,
                      height: h * 0.4,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Group 4841.png"),
                              fit: BoxFit.cover)),
                      child: const CircleAvatar(
                        backgroundColor: Color(0xff5db235),
                        child: Icon(
                          // FontWeight:FontWeight.bold,
                          Icons.check_box_sharp,
                          size: 90,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.06),
                    const Text(
                      "Congratulations",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    const Text(
                      "You have successfully signed in",
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    customutton(
                      color: kblackcolor,
                      width: double.infinity,
                      height: h * 0.07,
                      text: Text('COMPLETE PROFILE',
                          style: TextStyle(fontSize: 14, color: kwhitecolor)),
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Skip>>>",
                  style: styaltext.copyWith(
                      fontSize: 15, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
