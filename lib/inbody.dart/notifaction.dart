import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/navigation.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore_for_file: unused_import
class Notifications extends StatefulWidget {
  const Notifications({super.key});
  @override
  State<Notifications> createState() => _NotificationsState();
}

late double h, w;
String token =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvbXl3b3JrZGVzay50ZWNoXC9kZXZlbG9wbWVudFwvMW1hbnRyYVwvYXBpXC92ZXJpZnlfb3RwIiwiaWF0IjoxNjgxMjkyMTM4LCJleHAiOjE2ODM4ODQxMzgsIm5iZiI6MTY4MTI5MjEzOCwianRpIjoiZkcySUZSYjBtRWtMV3AxNCIsInN1YiI6MTI3LCJwcnYiOiJlN2Y5NWFkMjU5YWVlZjVlNGM3YmQ5YWZlMzMwOTVmNmMwNDM5MzhmIn0.N-bY3QVBHBLNdUq4Ya90QVfc27lXAbhsfdWbE_Lirag";

class _NotificationsState extends State<Notifications> {
  @override
  void initState() {
    super.initState();
    Notificationdate();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhitecolor,
        titleSpacing: 1,
        title: Text(
          "NOTIFICATIONS",
          style: styaltext,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kblackcolor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.3,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff428504),
                          minRadius: 10,
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Everyday English-French-Spanish:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Conversation and Fun - Joe!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "9 hrs",
                                style: TextStyle(color: Colors.white38),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: w * 0.05,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff428504),
                          minRadius: 10,
                        ),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Assemblea Amici di Beppe Grillo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Salerno",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "21 hours ago",
                                style: TextStyle(color: Colors.white38),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.15,
              padding: EdgeInsets.symmetric(horizontal: 21),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 3, color: kgreyclr)]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: kgreyclr,
                        minRadius: 10,
                      ),
                      SizedBox(width: w * 0.07),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Assemblea Amici di Beppe Grillo",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Salerno",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "21 hours ago",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: h * 0.08,
                    width: w * 0.14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),
            Container(
              height: h * 0.15,
              padding: EdgeInsets.symmetric(horizontal: 21),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 3, color: kgreyclr)]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: kgreyclr,
                        minRadius: 10,
                      ),
                      SizedBox(width: w * 0.07),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Assemblea Amici di Beppe Grillo",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Salerno",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "21 hours ago",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: h * 0.08,
                    width: w * 0.14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),
            Container(
              height: h * 0.15,
              padding: EdgeInsets.symmetric(horizontal: 21),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 3, color: kgreyclr)]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: kgreyclr,
                        minRadius: 10,
                      ),
                      SizedBox(width: w * 0.07),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Assemblea Amici di Beppe Grillo",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Salerno",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "21 hours ago",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  inkln()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container inkln() {
    return Container(
      height: h * 0.08,
      width: w * 0.14,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
          borderRadius: BorderRadius.circular(20)),
    );
  }

  Future<void> Notificationdate() async {
    try {
      var response = await http.get(
        Uri.parse(
            'https://myworkdesk.tech/development/1mantra/api/notification?astrologer_id=3'),
        headers: {'Authorization': 'Bearer $token'},
      );
      print(response.body);
      if (response.statusCode == 200) {
        final data = json.decode((response.body)
         
        );
        return data;
      }
    } catch (e) {
      print("Sarver error");
    }
  }
}
