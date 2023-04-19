import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sifat_e_commerce/congratulations.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  BackButton(
                    color: Colors.black,
                  ),
                  Text(
                    "Verification Code",
                    style: TextStyle(
                        color: Color(0xff241332),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.3,
              ),
              Row(children: [
                SizedBox(width: w * 0.150),
                SizedBox(
                  height: 50,
                  width: 70,
                  child: TextFormField(
                    onChanged: ((value) => {
                          if (value.length == 1)
                            {FocusScope.of(context).nextFocus()}
                        }),
                    decoration: InputDecoration(
                        hintText: "____",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      onChanged: ((value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()},
                            if (value.length != 1)
                              {FocusScope.of(context).previousFocus()}
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    )),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      onChanged: ((value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()},
                            if (value.length != 1)
                              {
                                FocusScope.of(context)
                                    .focusInDirection(TraversalDirection.left)
                              }
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    )),
                SizedBox(
                    height: 50,
                    width: 70,
                    child: TextFormField(
                      onChanged: ((value) => {
                            if (value.length != 1)
                              {
                                FocusScope.of(context)
                                    .focusInDirection(TraversalDirection.left)
                              }
                          }),
                      decoration: InputDecoration(
                          hintText: "____",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ))
              ]),
              SizedBox(
                height: h * 0.02,
              ),
              const Text(
                "Resend code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: h * 0.07,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Congratulations()));
                },
                child: Container(
                  height: h * 0.07,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: w * .04),
                  decoration: BoxDecoration(
                    color: const Color(0xff111111),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(.29),
                        blurRadius: 4,
                        spreadRadius: 0,
                        // ignore: prefer_const_constructors
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
