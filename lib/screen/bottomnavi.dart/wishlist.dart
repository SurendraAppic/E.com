import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/search.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/test.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/reuse.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}
class _WishlistState extends State<Wishlist> {
  var h, w;
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
          "Wishlist",
          style: styaltext.copyWith(fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: kwhitecolor,
        leading: Padding(
          padding: EdgeInsets.only(left: w * 0.02),
          child: InkWell(
            onTap: (){
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
              height: h * 0.03,
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
              height: h * 0.06,
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
                        child: GestureDetector(
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
                        child: GestureDetector(
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
              height: 20,
            ),
            coustpomcontwislist(),
          ],
        ),
      ),
    );
  }
}
