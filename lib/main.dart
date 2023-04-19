// ignore_for_file: unused_import, dead_code
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/inbody.dart/signup.dart';
import 'package:sifat_e_commerce/profile.dart';
import 'package:sifat_e_commerce/inbody.dart/notifaction.dart';
import 'package:sifat_e_commerce/screen/reviews.dart';
import 'package:sifat_e_commerce/utlish/colors.dart';
import 'package:sifat_e_commerce/utlish/provider.dart';
import 'package:sifat_e_commerce/utlish/textstyal.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DemoProvider>(
            create: (context) => DemoProvider())
      ],
      child: MaterialApp(
        title: 'Sifat_E_Commerce',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xffFBF9F9),
          )),
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Splash(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
              child: child!);
        },
      ),
    );
     }
}
class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () async {
      await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => SignUp(
                    index: 0,
                  )));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Center(
      child: Text(
        "Glean ",
        style: styaltext.copyWith(
          color: kblackcolor,
          fontSize: 40,
        ),
      ),
    ));
  }
}