import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/search.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/test.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Brandscreen extends StatefulWidget {
  const Brandscreen({super.key});

  @override
  State<Brandscreen> createState() => _BrandscreenState();
}

class _BrandscreenState extends State<Brandscreen> {
  var h, w;
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
      backgroundColor: kwhitecolor,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => SearchPage()));
            },
            child: Icon(
              Icons.search,
              color: kgreyclr,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // onTap: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx)=>))
              // },
              child: Icon(
                Icons.notification_add,
                color: kgreyclr,
              ),
            ),
          ),
        ],
        leadingWidth: 40,
        titleSpacing: -0,
        title: Text(
          "Brand Name",
          style: styaltext.copyWith(fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: kwhitecolor,
        leading: Padding(
          padding: EdgeInsets.only(left: w * 0.02),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kblackcolor,
              size: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25,
              width: double.infinity,
              color: kblackcolor,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  " OFFER TEXT",
                  style: TextStyle(color: kwhitecolor),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: kgreyclr, width: -0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: w * 0.5 - 0,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Center(
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  // enableDrag: false,
                                  isScrollControlled: true,
                                  isDismissible: false,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                  ),
                                  context: context,
                                  builder: (context) => Sort());
                            },
                            child: Text("Short"))),
                  ),
                  Container(
                    height: 50,
                    width: w * 0.5 - 1,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Center(
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  // enableDrag: false,
                                  isScrollControlled: true,
                                  isDismissible: false,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                  ),
                                  context: context,
                                  builder: (context) => flitter());
                            },
                            child: Text("Filter"))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: w * 0.04, right: w * 0.04, top: h * 0.01),
              padding: EdgeInsets.only(
                  left: w * 0.02, right: w * 0.02, top: h * 0.01),
              height: h * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/bg.png"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.02, right: w * 0.02, top: h * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DESCRIPTION",
                          style: styaltext.copyWith(fontSize: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Padding(
              padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
              child: Container(
                height: h * 0.7,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: -0,
                      mainAxisExtent: 270),
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
                                        image: AssetImage(
                                            "assets/shoping@2x.png")),
                                    color: kwhitecolor,
                                    border:
                                        Border.all(color: Color(0xff707070)),
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
      ),
    );
  }
}
