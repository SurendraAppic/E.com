import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(""),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datepicked = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2024)));

                    // ignore: avoid_print
                    if (datepicked != null) {}
                  },
                  child: const Text("show"))
            ],
          ),
        ));
  }
}
