// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late double h, w;
  int currentIndex = 0;
  PageController controller = PageController();
  List<String> images = [
    "assets/bg.png",
    "assets/bg.png",
    "assets/bg.png",
    "assets/bg.png",
  ];
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFF7F7),
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFF7F7),
        iconTheme: const IconThemeData(color: Color(0xff111111)),
        centerTitle: true,
        title: const Text(
          "GLEIN",
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.notifications_none_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.06,
              width: double.infinity,
              color: const Color(0xff000000),
              child: const Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
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
                    height: h * 0.3,
                    width: double.infinity,
                    child: Image.asset(
                      fit: BoxFit.fill,
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
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
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
                      const Text("View More",
                          style: TextStyle(
                              color: Color(0xff050800),
                              fontSize: 10,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Container(
                    height: h * 0.8,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 30,
                              mainAxisExtent: 290),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              height: h * 0.3,
                              width: w * 0.6,
                              child: Image.asset(
                                "assets/Group 4505.png",
                                fit: BoxFit.cover,
                                height: h * 0.4,
                                width: w * 0.4,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.1),
                                  ),
                                ],
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(11),
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
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
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
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Column(
              children: [
                Container(
                  height: h * 0.40,
                  width: double.infinity,
                  color: Colors.white,
                  // height: h * 0.1,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: 13,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: h * 0.2,
                          width: w * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color(0xffF5EAEA),
                              border:
                                  Border.all(color: const Color(0xffFFFFFF))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.3,
                                width: w * 0.5,
                                child: Image.asset(
                                  "assets/NoPath.png",
                                  fit: BoxFit.cover,
                                ),
                                // color: Colors.blueAccent,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: const Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: const Color(0xff707070)),
                                ),
                              ),
                              const Text(
                                "PRODUCT NAME",
                                style: TextStyle(
                                    color: Color(0xff374750),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              const Text(
                                "COST",
                                style: TextStyle(
                                    color: Color(0xfF374750),
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                  CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                  CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                  CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                  CircleAvatar(
                                    maxRadius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                  Text("+ more")
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: h * 0.3,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Image.asset(
                    "assets/bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                    "dfdfdfdfdfdfdffdfdddddddddddddddddddddddddddddddddddddd")
              ],
            ),
            SizedBox(
              height: h * 0.03,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: h * 0.9,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                      mainAxisExtent: 300),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: h * 0.37,
                          width: w * 0.8,
                          child: Image.asset("assets/NoPath - Copy (9)@2x.png"),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff000000).withOpacity(0.1),
                              ),
                            ],
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text(
                          "Category Name",
                          style:
                              TextStyle(color: Color(0xff374750), fontSize: 11),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(right: 270),
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
              height: h * 0.40,
              width: double.infinity,
              color: Colors.white,
              // height: h * 0.1,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 13,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: h * 0.2,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffF5EAEA),
                          border: Border.all(color: const Color(0xffFFFFFF))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.3,
                            width: w * 0.5,
                            child: Image.asset(
                              "assets/NoPath.png",
                              fit: BoxFit.cover,
                            ),
                            // color: Colors.blueAccent,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              color: const Color(0xffFFFFFF),
                              border:
                                  Border.all(color: const Color(0xff707070)),
                            ),
                          ),
                          const Text(
                            "PRODUCT NAME",
                            style: TextStyle(
                                color: Color(0xff374750),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          const Text(
                            "COST",
                            style: TextStyle(
                                color: Color(0xfF374750),
                                fontSize: 6,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                maxRadius: 8,
                                backgroundColor: Colors.red,
                              ),
                              Text("+ more")
                            ],
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
            // SizedBox(
            //   height: h * 0.03,
            // ),
            Container(
              color: Colors.white,
              height: h * 0.24,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(
                  left: w * 0.028,
                ),
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.4,
                      margin: EdgeInsets.only(right: w * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xffF5EAEA),
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: h * 0.08,
                          ),
                          Image.asset("assets/App Icons.png"),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "50% OFF",
                            style: TextStyle(
                                color:
                                    const Color(0xff080708).withOpacity(0.77),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          const Text("using CitiBank credit card"),
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

            const Padding(
              padding: EdgeInsets.only(right: 285),
              child: Text(
                "Recommended",
                style: TextStyle(
                    color: Color(0xff020000),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
          ],
        ),
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
