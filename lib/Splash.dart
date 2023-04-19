// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sifat_e_commerce/wellcome.dart';

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
          context, MaterialPageRoute(builder: (context) => const Wellcome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xff111111), Color(0xff555869)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    ));
  }
}
