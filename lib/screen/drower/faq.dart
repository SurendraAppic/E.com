// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class faq extends StatefulWidget {
  const faq({super.key});
  @override
  State<faq> createState() => _faqState();
}

var h, w;
bool _customTileExpanded = false;

class _faqState extends State<faq> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: h * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    
                    Icons.arrow_back_ios_new,
                    color: kblackcolor,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("  FAQ", style: styaltext))
                ],
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: h * 0.01),
                      margin: EdgeInsets.only(bottom: h * 0.02),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: klightgrey,
                                offset: Offset(0, 2))
                          ]),
                      child: Theme(
                        data: ThemeData(dividerColor: kwhitecolor),
                        child: ExpansionTile(
                          backgroundColor: Colors.white,
                          iconColor: kgreyclr,
                          title: Text(
                            'Who May Use the Services?',
                            style: styaltext,
                          ),
                          children: <Widget>[
                            ListTile(
                                title: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium posuere porttitor. Vestibulum pharetra, ipsum sit amet pellentesque ultricies, urna risus sodales nulla, tempus tincidunt justo dolor non nibh.")),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
//