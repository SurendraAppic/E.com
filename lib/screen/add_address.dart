// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/savedAddresses.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Add extends StatefulWidget {
  const Add({super.key});
  @override
  State<Add> createState() => _AddState();
}

String? relation;
String? relation1;
bool light = true;
final List _relate = [
  'india',
  'jaipur',
  'ajmer',
];
final List _relate1 = [
  'india',
  'jaipur',
  'ajmer',
];
var h, w;

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // titleSpacing: ,
        // leadingWidth,
        title: Text(
          "Add Address",
          style: styaltext.copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kwhitecolor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: kblackcolor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(1),
              height: h * 0.75,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhitecolor,
                  boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 50,
                        width: w * 0.3,
                        decoration: BoxDecoration(
                            color: kgreyclr,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text("USE CURRENT LOCATION",
                              style: styaltext.copyWith(
                                  fontSize: 14, color: kwhitecolor)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: w * 0.19,
                          color: kgreyclr,
                        ),
                        Text(" OR "),
                        Container(
                          height: 2,
                          // width: do,
                          width: w * 0.19,
                          color: kgreyclr,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text("Address"),
                    DropdownButton(
                      underline: Container(),
                      value: relation1,
                      hint: Text(
                        "Select Country",
                        style: TextStyle(
                          color: klightgrey,
                          fontFamily: "poppins",
                          fontSize: 14,
                        ),
                      ),
                      dropdownColor: Colors.white,
                      isExpanded: true,
                      icon: SizedBox(
                        // width: w * 0.7,
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kprimclr,
                          size: 30,
                        ),
                      ),
                      items: _relate1.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          relation1 = value.toString();
                        });
                      },
                    ),
                    Divider(
                      color: kgreyclr,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: "House/Flat/Office No.*"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Street*"),
                    ),
                    DropdownButton(
                      underline: Container(),
                      value: relation,
                      hint: Text(
                        "Select Country",
                        style: TextStyle(
                          color: klightgrey,
                          fontFamily: "poppins",
                          fontSize: 14,
                        ),
                      ),
                      dropdownColor: Colors.white,
                      isExpanded: true,
                      icon: SizedBox(
                        // width: w * 0.7,
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kprimclr,
                          size: 30,
                        ),
                      ),
                      items: _relate.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          relation = value.toString();
                        });
                      },
                    ),
                    Divider(
                      color: kgreyclr,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: w * 0.2,
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "City*"),
                          ),
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        SizedBox(
                            width: w * 0.2,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "Postal Code*"),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Contact",
                      style: styaltext,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Name**"),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Mobile No.*"),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Make Default"),
                      Switch(
                        // This bool value toggles the switch.
                        value: light,
                        activeColor: Colors.red,
                        onChanged: (bool value) {
                          // This is called when the user toggles the switch.
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: kblackcolor),
                          onPressed: () {
                           
                            moveScreen(context, Savedscreen());
                          },
                          child: Text(
                            "SAVE ADDRESS",
                            style: styaltext.copyWith(color: kwhitecolor),
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
