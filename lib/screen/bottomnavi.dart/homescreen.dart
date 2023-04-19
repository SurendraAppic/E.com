// ignore: unused_import
// ignore_for_file: override_on_non_overriding_member, unused_import, duplicate_ignore
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/PRODUCTSpage.dart';
import 'package:sifat_e_commerce/screen/brand.dart';
import 'package:sifat_e_commerce/screen/categoryname.dart';
import 'package:sifat_e_commerce/screen/drower.dart';
import 'package:sifat_e_commerce/inbody.dart/notifaction.dart';
import 'package:sifat_e_commerce/screen/promo.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late double h, w;

  @override
  int currentIndex = 0;
  PageController controller = PageController();
  List<String> images = [
    "assets/friends-shopping-870x400.jpg",
    "assets/shopping-mall.jpg",
    "assets/friends-shopping-870x400.jpg",
    "assets/shopping-mall.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      // backgroundColor: const Color(0xffFFF7F7),

      appBar: AppBar(
        //  backgroundColor: kwhitecolor,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => Drowerscreeen()));
            },
            child: Icon(Icons.menu)),
        elevation: 0,
        backgroundColor: const Color(0xffFFF7F7),
        iconTheme: const IconThemeData(color: Color(0xff111111)),
        centerTitle: true,
        title: GestureDetector(
          onTap: () {},
          child: const Text(
            "GLEIN",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: kgreyclr,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {
                // push(context, Notifications());
              },
              child: Icon(
                Icons.notifications_none_outlined,
                color: kblackcolor,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: h * 0.04,
            width: double.infinity,
            color: const Color(0xff000000),
            child: Padding(
              padding: EdgeInsets.only(
                top: w * 0.02,
                left: w * 0.04,
                right: w * 0.04,
              ),
              child: Text(
                "OFFER TEXT",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 12.8,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.3,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  // height: h * 0.3,
                  width: double.infinity,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    images[index % images.length],
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
            height: h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Popular Categories",
                  style: TextStyle(
                      color: Color(0xff050800),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text("View More",
                      style: TextStyle(
                          color: Color(0xff050800),
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.69,
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: showiamge.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 0,
                    mainAxisExtent: 270),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          moveScreen(context, Categorypagescreen());
                        },
                        child: Container(
                          height: h * 0.25,
                          width: w * 0.8,
                          margin: EdgeInsets.only(
                            left: h * 0.02,
                            right: h * 0.02,
                            top: h * 0.02,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  showiamge[index]['image'].toString(),
                                ),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(color: kgreyclr, blurRadius: 2),
                            ],
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      const Text(
                        "Category Name",
                        style: TextStyle(
                            color: Color(0xff374750),
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Flash Sale',
                  style: TextStyle(
                      color: Color(0xff020000),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ends in 24:00:00',
                  style: TextStyle(
                      color: Color(0xff111111),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.31,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kwhitecolor,
                boxShadow: [BoxShadow(blurRadius: 6, color: kgreyclr)]),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              // physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: showiamge.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
                        width: 170,
                        decoration: BoxDecoration(
                            color: kwhitecolor,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                moveScreen(context, Productsscreen());
                              },
                              child: Container(
                                height: h * 0.2,
                                width: 170,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(showiamge[index]
                                                ['image']
                                            .toString()),
                                        fit: BoxFit.cover),
                                    color: kwhitecolor,
                                    border:
                                        Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5))),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRODUCT NAME",
                                    style: styaltext.copyWith(fontSize: 13),
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
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  // height: h * 0.3,
                  width: double.infinity,
                  color: kblackcolor,
                  child: Image.asset(
                    "assets/Rectangle 208 (5).png",
                    fit: BoxFit.cover,
                  ));
            },
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Brand",
                    style: styaltext.copyWith(
                      fontSize: 14,
                    )),
                Text(
                  "View More",
                  style: styaltext.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 12,
              right: 12,
            ),
            child: Container(
              height: h * 0.63,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: addImage.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 17,
                    mainAxisExtent: 270),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          push(context, Brandscreen());
                        },
                        child: Container(
                          margin: EdgeInsets.all(2),
                          height: h * 0.25,
                          width: w * 0.8,
                          child: Image.asset(
                            addImage[index]['image'].toString(),
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 1, color: kgreyclr)
                            ],
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      const Text(
                        "Category Name",
                        style:
                            TextStyle(color: Color(0xff374750), fontSize: 11),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular Products",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff050800),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.31,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kwhitecolor,
                boxShadow: [BoxShadow(blurRadius: 6, color: kgreyclr)]),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              // physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: 13,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
                        width: 150,
                        decoration: BoxDecoration(
                            color: kwhitecolor,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.2,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/shoping@2x.png")),
                                  color: kwhitecolor,
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRODUCT NAME",
                                    style: styaltext.copyWith(fontSize: 13),
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
                  ),
                );
              },
            ),
          ),
          Container(
            height: h * 0.04,
            width: double.infinity,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.only(top: 15, left: 14),
              child: Text(
                "Offers & Promotions",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff050800)),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.21,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kwhitecolor,
                boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
            child: ListView.builder(
              padding: EdgeInsets.only(
                left: w * 0.02,
              ),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        push(context, PROMOscreen());
                      },
                      child: Container(
                        // padding: EdgeInsets.only(left: 10, right: 10, botto),
                        height: h * 0.18,
                        width: w * 0.3,
                        margin: EdgeInsets.only(
                            right: w * 0.03, left: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffF5EAEA),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: h * 0.05,
                            ),
                            Image.asset("assets/App Icons.png"),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "27% OFF",
                              style: TextStyle(
                                  color:
                                      const Color(0xff080708).withOpacity(0.77),
                                  fontSize: 6,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            const Text("using CitiBank credit card",
                                style: TextStyle(fontSize: 8)),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.04, right: 10),
            child: Text(
              "Recommended",
              style: TextStyle(
                  color: Color(0xff020000),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
            child: Container(
              height: h * 0.7,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 280),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
                        width: 180,
                        decoration: BoxDecoration(
                            color: kwhitecolor,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: kgreyclr)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.2,
                              width: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/upi-icon@2x.png")),
                                  color: kwhitecolor,
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: w * 0.3, top: h * 0.15),
                                child: Icon(
                                  Icons.man,
                                  color: kblackcolor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRODUCT NAME",
                                    style: styaltext.copyWith(fontSize: 13),
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
                                  SizedBox(
                                    height: h * 0.01,
                                  )
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
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Container(
            height: isSelected ? 10 : 7,
            width: isSelected ? 10 : 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.black : Colors.grey,
            )));
  }
}
