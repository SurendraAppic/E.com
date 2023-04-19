import 'package:flutter/material.dart';

import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List allData = ["", "", "", ""];
  List data = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    data.addAll(allData);
  }

  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: h * 0.05),
        child: Column(children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: kwhitecolor,
                boxShadow: [BoxShadow(blurRadius: 2, color: kgreyclr)]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: kgreyclr,
                    ),
                    hintText: "Search",
                    hintStyle: styaltext,
                    border: InputBorder.none),
                onChanged: (value) {
                  setState(() {
                    var d = allData.where((element) => element
                        .toString()
                        .toUpperCase()
                        .contains(value.toUpperCase()));
                    data.clear();
                    data.addAll(d);
                  });
                },
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]),
              );
            },
          )
        ]),
      ),
    );
  }
}
