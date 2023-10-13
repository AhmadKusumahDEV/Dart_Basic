import 'package:flutter/material.dart';
import 'row.dart';

class Helloworld2 extends StatelessWidget {
  const Helloworld2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 15, 4),
          title: const Center(child: Text("Baris dan kolom")),
        ),
        body: ListView(children: const [
          Row(
            children: [
              Expende("Baris 1, Kolom 1"),
              Expende("Baris 1, Kolom 2"),
              Expende("Baris 1, Kolom 3")
            ],
          ),
          Row(
            children: [
              Expende("baris 2, kolom 1"),
              Expende("baris 2, kolom 2"),
              Expende("baris 2, kolom 3")
            ],
          ),
          Row(
            children: [
              Expende("baris 3, kolom 1"),
              Expende("baris 3, kolom 2"),
              Expende("baris 3, kolom 3")
            ],
          ),
        ]));
  }
}
