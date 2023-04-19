import 'package:flutter/material.dart';

class Mm extends StatefulWidget {
  const Mm({super.key});

  @override
  State<Mm> createState() => _MmState();
}

class _MmState extends State<Mm> {
  bool raj = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.gite_outlined),
          Text("datayrtfuryhyystrurfudfieffceeee")
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 145,
              width: 332,
              color: raj != true ? Colors.amber : Colors.deepPurple,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    raj = !raj;
                  });
                },
                child: const Text(
                  "data",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      backgroundColor: Colors.tealAccent),
                ))
          ],
        ),
      ),
    );
  }
}
