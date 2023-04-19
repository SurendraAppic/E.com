import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

// ignore_for_file: unused_import
const graycolor = Color(0xff0000001F);
const kwhitecolor = Color(0xFFFFFFFF);
const kblackcolor = Color(0xFF000000);
const kgreencolor = Color(0xff6EECAF);
const kprimclr = Color(0xFF377785);
const klightgrey = Color(0xffB1B3B4);
const kgreyclr = Colors.grey;
const kstxtcolor = Color(0xff2C2C2C);
const kblrclr = Color(0xff7B777721);
const kbdrsideclr = Color(0xffE9B9B929);
const kshadowclr = Color(0xff0000001F);
const kredclr = Color(0xffC60202);

Future push(context, widget) {
  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) {
        return widget;
      },
    ),
  );
}

void moveScreen(context, var screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}

const googleimage = "assets/Group 7.png";
const facebookimage = "assets/Group 9.png";
const appleimage = "assets/Group 4532.png";

class customutton extends StatelessWidget {
  const customutton({
    required this.width,
    required this.height,
    Key? key, 
    required this.text,
    required this.press,
    required this.color,
  }) : super(key: key);
  final Widget text;
  final Function() press;
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    // BoxShadow(blurRadius: 1, color: Colors.white);
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: kblackcolor.withOpacity(0.26),
                blurRadius: 14,
                offset: Offset(0, 7),
              )
            ]),
        child: Center(child: text),
      ),
    );
  }
}



