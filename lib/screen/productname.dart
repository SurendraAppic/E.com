// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sifat_e_commerce/screen/delivery.dart';
import 'package:sifat_e_commerce/screen/reviews.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
import 'dart:ffi';
// ignore_for_file: unused_import

class Productname extends StatefulWidget {
  const Productname({super.key});

  @override
  State<Productname> createState() => _ProductnameState();
}

class _ProductnameState extends State<Productname> {
  var forcolor = 0;
  int currentIndex = 0;
  PageController controller = PageController();
  List<String> images = [
    "assets/bg.png",
    "assets/bg.png",
    "assets/bg.png",
    "assets/bg.png",
  ];
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kblackcolor,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/shopping-shannon-springs-2.jpg",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: kgreyclr,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: kblackcolor,
                                    size: 15,
                                  ),
                                ),
                              ),
                              radius: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/Group 4956.svg"),
                                SvgPicture.asset("assets/Group 4957.svg")
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: w * 0.04, right: w * 0.04, top: h * 0.01),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 15,
                              // width: double.infinity,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                  color: kblackcolor,
                                  borderRadius: BorderRadius.circular(0)),
                              child: Center(
                                child: Text(
                                  "RECOMMENDED",
                                  style: styaltext.copyWith(
                                      color: kwhitecolor, fontSize: 7),
                                ),
                              )),
                          Row(
                            children: [
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
                                style: styaltext.copyWith(
                                    color: kgreyclr, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                        "Product Name",
                        style: styaltext.copyWith(),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                        "Category",
                        style:
                            styaltext.copyWith(color: kgreyclr, fontSize: 12),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        children: [
                          Text("cost",
                              style: styaltext.copyWith(
                                decoration: TextDecoration.lineThrough,
                              )),
                          Text(" Offer Price",
                              style: styaltext.copyWith(fontSize: 15))
                        ],
                      ),
                      Text(
                        'Color : White',
                        style: styaltext.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                          SizedBox(
                            width: 4,
                          ),
                          cikalpage(),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.009,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size :",
                            style: styaltext.copyWith(fontSize: 12),
                          ),
                          Text(
                            "Size Chart :",
                            style: styaltext.copyWith(
                                fontSize: 12, color: Color(0xff032C5D)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      SizedBox(
                        height: h * 0.029,
                        child: ListView.builder(
                          itemCount: Name.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  forcolor = index;
                                });
                              },
                              child: Container(
                                height: h * 0.029,
                                width: 35,
                                margin: EdgeInsets.only(right: 5),
                                // padding: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  color: forcolor == index
                                      ? kwhitecolor
                                      : kwhitecolor,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    width: 0,
                                    color: Color(0xff707070),
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  Name[index]["key"].toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                        "Qty :",
                        style: styaltext.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Container(
                        height: h * 0.23,
                        margin: EdgeInsets.only(top: 5),
                        width: double.infinity,
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: kwhitecolor,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(blurRadius: 1, color: kgreyclr)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Shipping to Pakistan:",
                                      style: styaltext.copyWith(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: w * 0.03, right: w * 0.03),
                                    child: GestureDetector(
                                      onTap: () {
                                        moveScreen(context, Delivery());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Free standard shipping on orders above AED 180.90Estimated to be delivered on 2023/02/01 - 2023/02/05",
                                            // style: styaltext,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: kgreyclr,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    // color: kblackcolor,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: w * 0.03, right: w * 0.03),
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            isDismissible: false,
                                            backgroundColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(40),
                                                  topLeft: Radius.circular(40)),
                                            ),
                                            context: context,
                                            builder: (context) => Produc());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Return Policy",
                                            style: styaltext,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: kgreyclr,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    // color: kblackcolor,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: w * 0.03, right: w * 0.03),
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            isDismissible: false,
                                            backgroundColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(40),
                                                  topLeft: Radius.circular(40)),
                                            ),
                                            context: context,
                                            builder: (context) => retur());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Description",
                                            style: styaltext,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: kgreyclr,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/Icon awesome-shopping-bag.svg",
                              color: kblackcolor,
                            ),
                            SizedBox(
                              height: 40,
                              width: w * 0.6,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: kblackcolor),
                                  onPressed: () {},
                                  child: Text("data")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: w * 0.02, right: w * 0.02, top: h * 0.01),
                        height: h * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kwhitecolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/bg.png"),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.02,
                                  right: w * 0.02,
                                  top: h * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DESCRIPTION",
                                    style: styaltext.copyWith(fontSize: 10),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Lorem ipsum is a placeholder text commonly used .",
                                        style: styaltext.copyWith(fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: w * 0.03,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: kblackcolor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Container(
                        height: h * 0.05,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffFAFBFF),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Product",
                              style: styaltext.copyWith(fontSize: 10),
                            ),
                            Text(
                              "Reviews",
                              style: styaltext.copyWith(fontSize: 10),
                            ),
                            Text(
                              "Recommanded",
                              style: styaltext.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Text("Reviews"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                            style: styaltext.copyWith(
                                color: kgreyclr, fontSize: 12),
                          ),
                          SizedBox(
                            width: w * 0.48,
                          ),
                          GestureDetector(
                            onTap: () {
                              moveScreen(context, ReviewSscreen());
                            },
                            child: Text(
                              "View All",
                              style: styaltext.copyWith(
                                  color: Color(0xff0C3565), fontSize: 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      SizedBox(
                        height: h * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              height: h * 0.3,
                              width: w * 0.4,
                              decoration: BoxDecoration(
                                  color: Color(0xffFAFBFF),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 2, color: kgreyclr)
                                  ]),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h * 0.57,
                        width: double.infinity,
                        child: PageView.builder(
                          controller: controller,
                          onPageChanged: (index) {
                            setState(() {
                              currentIndex = index % images.length;
                            });
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              height: h * 0.7,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2.0, color: Colors.grey),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: h * 0.035,
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
                                    Row(
                                      children: const [
                                        Icon(Icons.star_border),
                                        Icon(Icons.star_border),
                                        Icon(Icons.star_border),
                                        Icon(Icons.star_border),
                                        Icon(Icons.star_border),
                                      ],
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
                                      height: h * 0.17,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 4,
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            margin: EdgeInsets.all(5),
                                            // height: h * 0.9,
                                            width: w * 0.3,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 2,
                                                      color: Colors.grey)
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
                                          fontSize: 12,
                                          color: Color(0xff374750)),
                                    ),
                                    SizedBox(
                                      height: h * 0.18,
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
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < images.length; i++)
                            buildIndicator(currentIndex == i)
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                        "Write a Review",
                        style: styaltext.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Container(
                        height: h * 0.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(blurRadius: 2.0, color: Colors.grey),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 15, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.0001,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kgreyclr, width: 2)),
                                    hintText: "Title..",
                                    hintStyle: styaltext.copyWith(
                                        color: kgreyclr, fontSize: 8)),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text(
                                "Write Review here...",
                                style: styaltext.copyWith(fontSize: 8),
                              ),
                              SizedBox(
                                height: h * 0.23,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.download,
                                            color: kblackcolor,
                                          ),
                                          Text(
                                            "Upload Images",
                                            style: styaltext.copyWith(
                                                fontSize: 13, color: kgreyclr),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: h * 0.04,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: kblackcolor,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(" Submit")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Text(
                        "You May Also Like",
                        style: styaltext.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.7,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 0,
                                  crossAxisSpacing: 15,
                                  mainAxisExtent: 270),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
                                  width: w * 045,
                                  decoration: BoxDecoration(
                                      color: kwhitecolor,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2, color: kgreyclr)
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: h * 0.21,
                                        width: w * 045,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/shopping-mall.jpg"),
                                                fit: BoxFit.cover),
                                            color: kwhitecolor,
                                            border: Border.all(
                                                color: Color(0xff707070)),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5))),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "PRODUCT NAME",
                                              style: styaltext.copyWith(
                                                  fontSize: 13),
                                            ),
                                            SizedBox(
                                              height: h * 0.01,
                                            ),
                                            Text(
                                              "cost",
                                              style: styaltext.copyWith(
                                                  color: kgreyclr,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 10),
                                            ),
                                            SizedBox(
                                              height: h * 0.01,
                                            ),
                                            Row(
                                              children: const [
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                CircleAvatar(
                                                  maxRadius: 5,
                                                  backgroundColor: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                CircleAvatar(
                                                  maxRadius: 5,
                                                  backgroundColor: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                CircleAvatar(
                                                  maxRadius: 5,
                                                  backgroundColor: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                CircleAvatar(
                                                  maxRadius: 5,
                                                  backgroundColor: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                CircleAvatar(
                                                  maxRadius: 5,
                                                  backgroundColor: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text("+ more"),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
