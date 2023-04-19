// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sifat_e_commerce/screen/add_address.dart';
import 'package:sifat_e_commerce/screen/productname.dart';
// ignore_for_file: unused_import
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class CustomClass extends StatelessWidget {
  const CustomClass({required this.txt, required this.child, super.key});
  final String txt;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    var h, w;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: h * 0.05, left: w * 0.02, right: w * 0.02),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: kblackcolor,
                  size: 22,
                ),
              ),
              Text(
                txt,
                style: styaltext,
              ),
            ],
          ),
        ),
        SizedBox(
          height: h * 0.05,
        ),
        Container(
          height: h * 0.7,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 10, color: kgreyclr)]),
          child: child,
        )
      ],
    );
  }
}

class Produc extends StatefulWidget {
  const Produc({super.key});

  @override
  State<Produc> createState() => _ProducState();
}

class _ProducState extends State<Produc> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.42,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Center(
            child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel_sharp,
                  color: kblackcolor,
                ),
              ),
            ),
            Text(
              "Product information",
              style: styaltext,
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: h * 0.01, left: w * 0.03, right: w * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque cursus elit sit amet congue. Praesent sed eros vitae mauris interdum porttitor at in neque. Praesent tincidunt lorem nisi, eu elementum felis posuere quis.",
                    style: styaltext.copyWith(
                        fontSize: 13, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                      "Meterials: Outer shell: 100% Polyurethane. Inner shell: 100% Viscose. Lining: 100% Polyester.",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Care instructions"),
                  Icon(
                    Icons.man,
                    color: kblackcolor,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Wash with similar colours",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Wash inside out",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Line dry",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Close all fastenings before",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Article number: 1736-0045876-345",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal))
                ],
              ),
            )
          ],
        )));
  }
}

class retur extends StatefulWidget {
  const retur({super.key});

  @override
  State<retur> createState() => _returState();
}

class _returState extends State<retur> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.35,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel_sharp,
                  color: kblackcolor,
                ),
              ),
            ),
            Center(
              child: Text(
                "Return Policy",
                style: styaltext,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Our Guarantee",
                    style: styaltext.copyWith(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                      "Return or exchange within 30 days from the delivered date.",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Request:",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                      "1. Items received within 30 days from the delivered date.",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                      "2. Items received unused, undamaged and in original package.",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("3. Return shipping fee is paid by buyer.",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text("Learn More",
                      style: styaltext.copyWith(
                          decoration: TextDecoration.underline,
                          fontSize: 13,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            )
          ],
        )));
  }
}

class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.34,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel_sharp,
                  color: kblackcolor,
                ),
              ),
            ),
            Center(
              child: Text(
                "Shipping to",
                style: styaltext,
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Shipping Address",
                    style: styaltext.copyWith(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text("Jaiput Rajasthan India",
                      style: styaltext.copyWith(
                          fontSize: 13, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  SizedBox(
                      height: h * 0.07,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: kblackcolor),
                          onPressed: () {
                            moveScreen(context, Add());
                          },
                          child: Text("Other Shipping Address")))
                ],
              ),
            ),
          ],
        )));
  }
}

class Continue extends StatefulWidget {
  const Continue({super.key});

  @override
  State<Continue> createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {
  var h, w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // print(st);
    return Container(
        height: h * 0.20,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
                child: Container(
              height: 5,
              width: w * 0.3,
              decoration: BoxDecoration(
                  color: kgreyclr, borderRadius: BorderRadius.circular(10)),
            )),
            SizedBox(
              height: h * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: w * 0.08, right: w * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "We have received your query our team will look into this issue and get back to you soon.",
                    style: styaltext.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: kgreyclr),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      // moveScreen(context, screen)
                    },
                    child: Center(
                      child: Text("Continue Shopping",
                          style: styaltext.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff807979))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}

class deletsdilog extends StatefulWidget {
  const deletsdilog({super.key});

  @override
  State<deletsdilog> createState() => _deletsdilogState();
}

class _deletsdilogState extends State<deletsdilog> {
  var h, w;
  var show = false;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return AlertDialog(
        backgroundColor: Colors.white,
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        content: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "Are you sure you want to delete this address?",
                style: styaltext.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = true;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            color: show ? kblackcolor : kwhitecolor,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text("Yes",
                              style: styaltext.copyWith(
                                  color: show ? kwhitecolor : kblackcolor)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.07,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = false;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                          color: show ? kwhitecolor : kblackcolor,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("No",
                            style: styaltext.copyWith(
                                color: show ? kblackcolor : kwhitecolor)),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          );
        }));
  }
}

class flitter extends StatefulWidget {
  const flitter({super.key});
  @override
  State<flitter> createState() => _flitterState();
}
class _flitterState extends State<flitter> {
  double start = 30.0;
  double end = 50.0;
  var show1 = false;
  // var show1 = false;
  List lst = [
    {
      "fgh": "S",
    },
    {
      "fgh": "M",
    },
    {
      "fgh": "L",
    },
    {
      "fgh": "XL",
    },
    {
      "fgh": "2XL",
    },
    {
      "fgh": "3XL",
    },
  ];
  List Name = [
    {
      "key": "Black",
    },
    {
      "key": "White",
    },
    {
      "key": "Blue",
    },
    {
      "key": "Gray",
    },
    {
      "key": "Orange",
    },
    {
      "key": "Light Blue",
    },
  ];
  var show = 0;
  var forcolor = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Center(
              child: Text("Filter", style: styaltext),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Divider(thickness: 1, color: kgreyclr),
            Padding(
              padding: EdgeInsets.only(
                  left: w * 0.05, right: w * 0.05, top: h * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "size",
                    style: styaltext.copyWith(color: kgreyclr, fontSize: 14),
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  SizedBox(
                    height: h * 0.025,
                    child: ListView.builder(
                      itemCount: lst.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              show = index;
                            });
                          },
                          child: Container(
                            height: h * 0.025,
                            width: w * 0.08,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: show == index ? Colors.teal : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0,
                                color: Color(0xff707070),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              lst[index]["fgh"].toString(),
                              style: TextStyle(
                                  color: show == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Color",
                    style: styaltext.copyWith(color: kgreyclr, fontSize: 14),
                  ),
                  SizedBox(
                    height: h * 0.02,
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
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: forcolor == index
                                  ? kwhitecolor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0,
                                color: Color(0xff707070),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              Name[index]["key"].toString(),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Price",
                    style: styaltext.copyWith(color: kgreyclr, fontSize: 14),
                  ),
                  RangeSlider(
                    inactiveColor: Color(0xffB1B1B1),
                    activeColor: Colors.black,
                    values: RangeValues(start, end),
                    labels: RangeLabels(start.toString(), end.toString()),
                    onChanged: (value) {
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                    min: 20.0,
                    max: 100.0,
                  ),
                  Text(
                    "Rating",
                    style: styaltext.copyWith(color: kgreyclr, fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/Icon awesome-star.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("assets/Icon awesome-star.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("assets/Icon feather-star.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("assets/Icon feather-star.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("assets/Icon feather-star.svg")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Category"),
                  SizedBox(
                    height: 10,
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
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: forcolor == index
                                  ? kwhitecolor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0,
                                color: Color(0xff707070),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              Name[index]["key"].toString(),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Brand",
                    style: styaltext.copyWith(color: kgreyclr, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
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
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: forcolor == index
                                  ? kwhitecolor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0,
                                color: Color(0xff707070),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              Name[index]["key"].toString(),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show1 = !show1;
                          });
                        },
                        child: Container(
                          height: h * 0.055,
                          width: 165,
                          decoration: BoxDecoration(
                              color: show1 ? kblackcolor : Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text("Yes",
                                style: styaltext.copyWith(
                                    color: show1 ? kwhitecolor : kblackcolor)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.07,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show1 = !show1;
                          });
                        },
                        child: Container(
                          height: h * 0.055,
                          width: 165,
                          decoration: BoxDecoration(
                              color: !show1 ? kblackcolor : Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text("No",
                                style: styaltext.copyWith(
                                    color: show1 ? kblackcolor : kwhitecolor)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

CircleAvatar cikalpage() {
  return CircleAvatar(
    radius: 8, // set the radius of the avatar
    backgroundImage:
        AssetImage('assets/images/avatar.png'), // set the image of the avatar
    backgroundColor: Colors.white, // set the background color of the avatar
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle, // set the shape of the container to circle
        border: Border.all(
          color: kgreyclr, // set the color of the border
          width: 1, // set the width of the border
        ),
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

class coustpomcontwislist extends StatefulWidget {
  const coustpomcontwislist({super.key});

  @override
  State<coustpomcontwislist> createState() => _coustpomcontwislistState();
}

class _coustpomcontwislistState extends State<coustpomcontwislist> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 0.7,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 270),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  push(context, Productname());
                },
                child: Container(
                  // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
                  width: w * 0.42,
                  decoration: BoxDecoration(
                      color: kwhitecolor,
                      boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * 0.2,
                        width: w * 0.42,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/shopping-shannon-springs-2.jpg"),
                                fit: BoxFit.cover),
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
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
              ),
            ],
          );
        },
      ),
    );
  }
}

List Name = [
  {
    "key": " xs ",
  },
  {
    "key": " l ",
  },
  {
    "key": " f ",
  },
  {
    "key": " m ",
  },
  {
    "key": " l ",
  },
  {
    "key": " 0 ",
  },
];
List showiamge = [
  {
    "image": "assets/google-pay.png",
  },
  {
    "image": "assets/shopping-shannon-springs-2.jpg",
  },
  {
    "image": "assets/shoping.png",
  },
  {
    "image": "assets/shopping-mall.jpg",
  },
];
List addImage = [
  {
    "image": "assets/phonepe-logo (1).png",
  },
  {
    "image": "assets/visa.png",
  },
  {
    "image": "assets/shoping.png",
  },
  {
    "image": "assets/NoPath - Copy (9)@2x.png",
  },
];

class listcoustom extends StatelessWidget {
  const listcoustom({super.key});

  @override
  Widget build(BuildContext context) {
    var h;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 3),
          width: 150,
          decoration: BoxDecoration(
              color: kwhitecolor,
              boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)],
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.2,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/shoping@2x.png")),
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
                padding: const EdgeInsets.only(left: 10, right: 10),
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
        );
      },
    );
  }
}
