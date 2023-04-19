// // ignore_for_file: unused_import, deprecated_member_use, unnecessary_null_comparison
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:sifat_e_commerce/screen/bottomnavi.dart/homescreen.dart';
// import 'package:sifat_e_commerce/screen/bottomnavi.dart/navigation.dart';
// import 'package:sifat_e_commerce/utlish/colors.dart';

// String abc = '';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController EmailController = TextEditingController();
//   // ignore: prefer_final_fields
//   TextEditingController _dateController = TextEditingController();

//   File imageFile = File("assets/NoPath - Copy (3).png");

//   Future getFromGallery() async {
//     PickedFile? pickedFile = await ImagePicker().getImage(
//       source: ImageSource.gallery,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }

//   late double h, w;
//   @override
//   Widget build(BuildContext context) {
//     h = MediaQuery.of(context).size.height;
//     w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       // backgroundColor: Color(0xffFBF9F9),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 23, right: 23),
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: h * 0.06,
//                 ),
//                 const Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     "PROFILE",
//                     style: TextStyle(
//                         color: Color(0xff111111),
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Stack(children: [
//                     CircleAvatar(
//                       maxRadius: 30,
//                       backgroundImage: imageFile == null
//                           ? AssetImage("assets/NoPath - Copy (3).png")
//                           : Image.file(imageFile).image,
//                       // child: imageFile == null
//                       //     ? Image.asset("assets/NoPath - Copy (3).png")
//                       //     : Image.file(
//                       //         imageFile,
//                       //         fit: BoxFit.fill,
//                       //       )
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40, top: 34),
//                       child: GestureDetector(
//                           onTap: () {
//                             getFromGallery();
//                           },
//                           child: Image.asset("assets/Group 4842.png")),
//                     )
//                   ]),
//                 ),
//                 SizedBox(
//                   height: h * 0.03,
//                 ),
//                 TextFormField(
//                   controller: nameController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Enter a name ';
//                     }
//                     abc = value;
//                     return null;
//                   },
//                   // style: TextStyle(color: Colors.red),
//                   decoration: InputDecoration(
//                       border: const UnderlineInputBorder(),
//                       focusedBorder: const UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xffDDDDDD))),
//                       contentPadding: const EdgeInsets.only(top: 20),
//                       hintText: "Name*",
//                       hintStyle: TextStyle(
//                           color: const Color(0xff241332).withOpacity(0.32))),
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 TextFormField(
//                   controller: mobileController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Enter a mobile ';
//                     } else if (mobileController.text.length != 10) {
//                       return 'Enter valid mobile number';
//                     } else if (!(value.contains("99"))) {
//                       return '99 nahi hai';
//                     }
//                     return null;
//                   },
//                   maxLength: 10,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                       counterText: "",
//                       border: const UnderlineInputBorder(),
//                       focusedBorder: const UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xffDDDDDD))),
//                       contentPadding: const EdgeInsets.only(top: 20),
//                       hintText: "Mobile No.*",
//                       hintStyle: TextStyle(
//                           color: const Color(0xff241332).withOpacity(0.32))),
//                 ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 TextFormField(
//                   controller: EmailController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'please enter in email';
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                       border: const UnderlineInputBorder(),
//                       focusedBorder: const UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0xffDDDDDD))),
//                       contentPadding: const EdgeInsets.only(top: 20),
//                       hintText: "E-Mail*",
//                       hintStyle: TextStyle(
//                           color: const Color(0xff241332).withOpacity(0.32))),
//                 ),
//                 SizedBox(
//                   height: h * 0.05,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     SizedBox(
//                       width: w * .5,
//                       child: TextFormField(
//                           readOnly: true,
//                           controller: _dateController,
//                           style: const TextStyle(color: Colors.black),
//                           decoration: InputDecoration(
//                             border: const UnderlineInputBorder(),
//                             focusedBorder: const UnderlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(0xffdddddd))),
//                             hintText: "DOB: 01-01-2001",
//                             hintStyle: TextStyle(
//                                 color:
//                                     const Color(0xff241332).withOpacity(0.32)),
//                             suffixIcon: Icon(
//                               Icons.calendar_month_outlined,
//                               color: const Color(0xff241332).withOpacity(0.32),
//                             ),
//                             contentPadding:
//                                 EdgeInsets.only(top: 20, right: w * 0),
//                           ),
//                           onTap: () async {
//                             FocusScope.of(context).requestFocus(FocusNode());
//                             await showDatePicker(
//                               context: context,
//                               initialDate: DateTime.now(),
//                               firstDate: DateTime.now(),
//                               lastDate: DateTime(2035),
//                             ).then((selectedDate) {
//                               if (selectedDate != null) {
//                                 _dateController.text =
//                                     "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
//                               }
//                             });
//                           }),
//                     ),
//                     Container(
//                       width: w * 0.3,
//                       height: h * 0.07,
//                       decoration: const BoxDecoration(
//                           border: Border(
//                               bottom: BorderSide(color: Color(0xffDDDDDD)))),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             children: [
//                               SizedBox(
//                                 height: h * 0.01,
//                               ),
//                               Image.asset("assets/male3.png"),
//                               Text(
//                                 "MALE",
//                                 style: TextStyle(
//                                     color: const Color(0xff241332)
//                                         .withOpacity(0.32)),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               SizedBox(
//                                 height: h * 0.01,
//                               ),
//                               Image.asset("assets/female.png"),
//                               Text(
//                                 "FEMALE",
//                                 style: TextStyle(
//                                     color: const Color(0xff241332)
//                                         .withOpacity(0.32)),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: h * 0.06,
//                 ),

//                 customutton(
//                     color: kblackcolor,
//                     width: double.infinity,
//                     height: h * 0.07,
//                     text: Text('Submit',
//                         style: TextStyle(fontSize: 17, color: kwhitecolor)),
//                     press: () {
//                       if (_formKey.currentState!.validate()) {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => MyNavigationBar()));
//                       }
//                     }),

//                 // GestureDetector(
//                 //   onTap: () {
//                 //     if (_formKey.currentState!.validate()) {
//                 //       Navigator.push(
//                 //         context,
//                 //         MaterialPageRoute(
//                 //             builder: (context) => MyNavigationBar()),
//                 //       );
//                 //     }
//                 //   },

//                 //   child: Container(
//                 //     height: h * 0.07,
//                 //     width: double.infinity,
//                 //     decoration: BoxDecoration(
//                 //         color: const Color(0xff111111),
//                 //         borderRadius: BorderRadius.circular(6),
//                 //         boxShadow: [
//                 //           BoxShadow(
//                 //               color: const Color(0xff000000).withOpacity(.29),
//                 //               blurRadius: 4,
//                 //               offset: const Offset(0, 4))
//                 //         ]),
//                 //     child: Align(
//                 //         alignment: Alignment.center,
//                 //         child: Text(
//                 //           "SUBMIT",
//                 //           style: TextStyle(
//                 //               color: const Color(0xffFFFFFF).withOpacity(0.80),
//                 //               fontSize: 14),
//                 //         )),
//                 //   ),
//                 // ),
//                 SizedBox(
//                   height: h * 0.02,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     moveScreen(context, MyNavigationBar());
//                   },
//                   child: Text(
//                     "Skip>>>",
//                     style: TextStyle(
//                         fontSize: 13,
//                         color: const Color(0xff000000).withOpacity(0.80)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
