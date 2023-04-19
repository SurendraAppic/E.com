import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/profile.dart';

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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                    child: Container(
                      height: h * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff111111),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xff000000).withOpacity(.29),
                                blurRadius: 4,
                                offset: const Offset(0, 4))
                          ]),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "COMPLETE PROFILE",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  const Text(
                    "Skip>>>",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              const Text("data")
            ],
          ),
        ),
      ),
    );
  }
}
