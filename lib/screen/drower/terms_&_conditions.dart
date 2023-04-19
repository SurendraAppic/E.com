// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});
  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhitecolor,
      body: CustomClass(
          txt: "  Terms & Conditions",
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us.",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium posuere porttitor. Vestibulum pharetra, ipsum sit amet pellentesque ultricies, urna risus sodales nulla, tempus tincidunt justo dolor non nibh. Nam vestibulum eleifend nunc at feugiat. Praesent suscipit ullamcorper elit, ut euismod orci eleifend ac. Duis faucibus vehicula tellus ac porta. Proin sagittis vestibulum massa. Fusce mattis est nec fermentum ultricies. Suspendisse nec semper massa. Proin sed orci justo. Suspendisse pellentesque imperdiet risus, in laoreet eros pretium eu.,",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          )),
    );
  }
}
