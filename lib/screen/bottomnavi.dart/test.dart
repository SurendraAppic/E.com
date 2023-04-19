import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
// ignore_for_file: unused_import

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
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
                child: Text("Produc")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
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
                child: Text("retur")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
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
                child: Text("sjdnc Shopping")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => deletsdilog());
                },
                child: Text("cont Shopping")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      enableDrag: false,
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
                child: Text("flitter Shopping")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
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
                child: Text("Sort Option")),
          ],
        ),
      ),
    ));
  }

  ElevatedButton Eleavated(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              isDismissible: false,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              context: context,
              builder: (context) => Shipping());
        },
        child: Text("flitter to"));
  }
}

class Sort extends StatefulWidget {
  const Sort({super.key});

  @override
  State<Sort> createState() => _SortState();
}

int show1 = 1;
// var show2 = false;
bool _isChecked = false;
bool _isChecked1 = false;
bool _isChecked2 = false;
bool _isChecked3 = false;

var h, w;

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: Text("Sort Option", style: styaltext),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Divider(thickness: 1, color: kgreyclr),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price High to low",
                      style: styaltext.copyWith(
                          fontWeight: FontWeight.normal,
                          color: kgreyclr,
                          fontSize: 14),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: kblackcolor,
                      checkColor: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price High to low",
                      style: styaltext.copyWith(
                          fontWeight: FontWeight.normal,
                          color: kgreyclr,
                          fontSize: 14),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      value: _isChecked1,
                      onChanged: (value) {
                        setState(() {
                          _isChecked1 = value!;
                        });
                      },
                      activeColor: kblackcolor,
                      checkColor: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price High to low",
                      style: styaltext.copyWith(
                          fontWeight: FontWeight.normal,
                          color: kgreyclr,
                          fontSize: 14),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      value: _isChecked2,
                      onChanged: (value) {
                        setState(() {
                          _isChecked2 = value!;
                        });
                      },
                      activeColor: kblackcolor,
                      checkColor: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price High to low",
                      style: styaltext.copyWith(
                          fontWeight: FontWeight.normal,
                          color: kgreyclr,
                          fontSize: 14),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      value: _isChecked3,
                      onChanged: (value) {
                        setState(() {
                          _isChecked3 = value!;
                        });
                      },
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                    )
                  ],
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
                          show1 = 0;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: h * 0.06,
                          width: w * 0.43,
                          decoration: BoxDecoration(
                              color:
                                  show1 == 0 ? kblackcolor : Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text("Close",
                                style: styaltext.copyWith(
                                    color: show1 == 0
                                        ? kwhitecolor
                                        : kblackcolor)),
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
                          show1 = 1;
                        });
                      },
                      child: Container(
                        height: h * 0.06,
                        width: w * 0.43,
                        decoration: BoxDecoration(
                            color: show1 == 1 ? kblackcolor : Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text("Apply",
                              style: styaltext.copyWith(
                                  color:
                                      show1 == 1 ? kwhitecolor : kblackcolor)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
