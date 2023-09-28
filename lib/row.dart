import 'package:flutter/material.dart';

class Expende extends StatelessWidget {
  final String val;
  const Expende(this.val, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 200,
            child: Center(
                child: Text(
              val,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ))));
  }
}
