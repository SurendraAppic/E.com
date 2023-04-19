// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, body_might_complete_normally_nullable
// ignore_for_file: must_be_immutable
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'varificationcode.dart';
import 'package:http/http.dart' as http;

// import '../Utilities/images.dart';
final _formKey = GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  int index = 0;
  SignUp({Key? key, required this.index}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late double h, w;
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: DefaultTabController(
          initialIndex: widget.index,
          length: 2,
          child: Column(
            children: [
              SizedBox(
                height: h * 0.09,
              ),
              TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: w * .1),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff111111)),
                indicatorWeight: 2,
                isScrollable: false,
                unselectedLabelColor: const Color(0xff998fa2).withOpacity(.6),
                tabs: const [
                  Tab(
                    text: ('SIGN IN'),
                  ),
                  Tab(text: ('SIGN UP')),
                ],
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Flexible(child: TabBarView(children: [signIn(), signUp(context)]))
            ],
          ),
        ),
      ),
    );
  }

//singup##########
  Form signUp(BuildContext context) {
    String _username;
    TextEditingController emailController = TextEditingController();
    TextEditingController NameController = TextEditingController();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: w * .04, right: w * .04),
            width: double.infinity,
            color: const Color(0xffFAF7F7),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.01,
                ),
                TextFormField(
                  controller: NameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter is a name';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 20,
                    ),
                    hintText: "Name*",
                    hintStyle: TextStyle(
                        color: const Color(0xff241332).withOpacity(0.32)),
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter is a Valid Number';
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 20),
                      hintText: "Mobile No*",
                      hintStyle: TextStyle(
                          color: const Color(0xff241332).withOpacity(0.32)),
                      border: const UnderlineInputBorder(),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter a email";
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: const Color(0xff241332).withOpacity(0.32)),
                      border: const UnderlineInputBorder(),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: h * 0.06,
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate())
                // singinsifit()
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => Varification(
                              phone: phoneController.text,
                            )));

              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Demo(number: date.text.toString(),date: date.text.toString(),)));
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
                      offset: const Offset(0, 4))
                ],
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          const Text(
            "Or Continue with",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Group 7.png"),
              Image.asset("assets/Group 9.png"),
              Image.asset("assets/Group 4532.png")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: 12, color: Color(0xff000000)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.index = 0;
                  });
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.03,
          ),
          const Text(
            "By clicking continue, I agree to the all the Terms",
            style: TextStyle(color: Color(0xff000000), fontSize: 12),
          )
        ],
      ),
    );
  }

// #####################
  Column signIn() {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(left: w * .04, right: w * .04),
            width: double.infinity,
            color: const Color(0xffFAF7F7),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  maxLength: 10,
                  controller: phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'plase enter is mobile number';
                    } else if (value.length < 10) {
                      return 'plase enter is  valid mobile number ';
                    }
                  },
                  decoration: InputDecoration(
                      counterText: "",
                      contentPadding: const EdgeInsets.only(top: 20),
                      hintText: "Mobile No.",
                      hintStyle: TextStyle(
                          color: const Color(0xff241332).withOpacity(0.32)),
                      border: const UnderlineInputBorder(),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: h * 0.07,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: h * 0.04,
        ),
        GestureDetector(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              singinsifit(phoneController.text.trim());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Varification(
                            phone: phoneController.text,
                          )));
            }
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
                      offset: const Offset(0, 4))
                ]),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
          ),
        ),
        SizedBox(
          height: h * 0.04,
        ),
        const Text(
          "Or Continue with",
          style: TextStyle(color: Color(0xff111111), fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(googleimage),
            Image.asset(facebookimage),
            Image.asset(appleimage)
          ],
        )
      ],
    );
  }


  Future<void> singinsifit(String? phone) async {
    try {
      var response = await http.post(
          Uri.parse(
              'https://myworkdesk.tech/development/1mantra/api/astro_signup'),
          body: {
            'phone': phone,
          });
      print(response.body);
      if (response.statusCode == 200) {
        final data = json.decode((response.body));
        return data;
      }
    } catch (e) {
      print("  Sarver error");
    }
  }
}


//  class s {
//   bool status;
//   String message;
//   Data data;

//   Autogenerated({this.status, this.message, this.data});

//   Autogenerated.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data.toJson();
//     }
//     return data;
//   }
// }