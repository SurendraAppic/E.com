import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/screen/brand.dart';
import 'package:sifat_e_commerce/inbody.dart/notifaction.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';

class brand extends StatefulWidget {
  const brand({super.key});

  @override
  State<brand> createState() => _brandState();
}

late double h, w;

class _brandState extends State<brand> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: kwhitecolor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kblackcolor,
            )),
        elevation: 0,
        backgroundColor: const Color(0xffFFF7F7),
        iconTheme: const IconThemeData(color: Color(0xff111111)),
        centerTitle: true,
        title: const Text(
          "GLEIN",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
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
                push(context, Notifications());
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
        children: [
          Container(
            height: h * 0.04,
            width: double.infinity,
            color: kblackcolor,
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
            height: h * 0.9,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 0,
                  mainAxisExtent: 280),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        moveScreen(context, Brandscreen());
                      },
                      child: Container(
                        height: h * 0.3,
                        width: w * 0.8,
                        margin: EdgeInsets.only(
                          left: h * 0.02,
                          right: h * 0.02,
                          top: h * 0.02,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/shopping-shannon-springs-2.jpg"),
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
                      "Brand Name",
                      style: TextStyle(
                          color: Color(0xff374750),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
