import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/Bag.dart';

import 'package:sifat_e_commerce/screen/bottomnavi.dart/search.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/wishlist.dart';
// import 'package:sifat_e_commerce/inbody.dart/profile.dart';
import 'package:sifat_e_commerce/screen/bottomnavi.dart/homescreen.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    const Homescreen(),
    const SearchPage(),
    //  const searchbar(),
    const Wishlist(),
    const BagScreen(),
    // const Profilscreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
            backgroundColor: Color(0xffffffff),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons8-home.svg",
                  color: selectedIndex == 0 ? kblackcolor : kgreyclr,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/search.svg",
                  color: selectedIndex == 1 ? kblackcolor : kgreyclr,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/Icon ionic-ios-heart-empty.svg",
                  color: selectedIndex == 2 ? kblackcolor : kgreyclr,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/shopping-bag.svg",
                  height: 20,
                  color: selectedIndex == 3 ? kblackcolor : kgreyclr,
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/9fe169c7d4695b01b29f1a21f375d47a.svg",
                  color: selectedIndex == 4 ? kblackcolor : kgreyclr,
                ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            iconSize: 30,
            selectedItemColor: kblackcolor,
            unselectedItemColor: kgreyclr,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
