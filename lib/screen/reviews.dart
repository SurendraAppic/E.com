import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReviewSscreen extends StatefulWidget {
  const ReviewSscreen({super.key});
  @override
  State<ReviewSscreen> createState() => _ReviewSscreenState();
}

@override
@override
class _ReviewSscreenState extends State<ReviewSscreen> {
  late double h, w;
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      appBar: AppBar(
          // leadingWidth: 1,
          titleSpacing: 1,
          elevation: 0,
          backgroundColor: kwhitecolor,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "REVIEWS",
                style: styaltext,
              ),
              Row(
                children: [
                  Text(
                    "4.5",
                    style: styaltext.copyWith(fontSize: 12),
                  ),
                  Icon(
                    Icons.star_border,
                    color: kblackcolor,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    color: kblackcolor,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    color: kblackcolor,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    color: kblackcolor,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    color: kblackcolor,
                    size: 15,
                  ),
                  Text(
                    "(1000+)",
                    style: styaltext.copyWith(color: kgreyclr),
                  )
                ],
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kblackcolor,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BackButton(color: Colors.black),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    height: h * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(blurRadius: 2.0, color: Colors.grey),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: h * 0.04,
                          ),
                          const Text(
                            "Customer Name",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff374750)),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          RatingStars(
                            value: value,
                            onValueChanged: (v) {
                              //
                              setState(() {
                                value = v;
                              });
                            },
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                            ),
                            starCount: 5,
                            starSize: 20,
                            valueLabelColor: const Color(0xffffffff),
                            maxValueVisibility: false,
                            valueLabelVisibility: false,
                            starColor: Colors.red,
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          const Text(
                            "Title",
                            style: TextStyle(
                                color: Color(0xff374750),
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          SizedBox(
                            height: h * 0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 4,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  // height: h * 0.9,
                                  width: w * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 2, color: Colors.grey)
                                      ]),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          const Text(
                            "Review",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff374750)),
                          ),
                          SizedBox(
                            height: h * 0.09,
                          ),
                          const Text(
                            "See more",
                            style: TextStyle(
                                color: Color(
                                  0xff0C3565,
                                ),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (() {}),
        child: Container(
          color: kwhitecolor,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 40, top: 5, bottom: 5, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.badge,
                  color: kblackcolor,
                ),
                InkWell(
                  onTap: () {
                    // reviweApidata(user_id, ratting, review)
                  },
                  child: Container(
                    height: 50,
                    width: w * 0.65,
                    decoration: BoxDecoration(
                        color: kblackcolor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: styaltext.copyWith(
                            color: kwhitecolor, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  Future<void> reviweApidata(String user_id, ratting, review) async {
    try {
      var response = await http.post(
          Uri.parse(
              'https://myworkdesk.tech/development/1mantra/api/user_ratting'),
          body: {'user_id': user_id, 'ratting': ratting, 'review': review});
      print(response.body);
      if (response.statusCode == 200) {
        final data = json.decode((response.body));
        return data;
      }
    } catch (e) {
      print("Sarver error");
    }
  }
  
}
