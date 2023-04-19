import 'package:flutter/material.dart';

class Tttt extends StatefulWidget {
  const Tttt({super.key});

  @override
  State<Tttt> createState() => _TtttState();
}

class _TtttState extends State<Tttt> {
  bool hous = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter "),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 90,
              width: 313,
              color: hous != false ? Colors.black : Colors.blueAccent,
            ),
            const SizedBox(
              height: 140,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    hous = !hous;
                  });
                },
                child: const Text("data"))
          ],
        ),
      ),
    );
  }
}
