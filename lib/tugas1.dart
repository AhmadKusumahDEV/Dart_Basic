import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  const Helloworld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 15, 4),
          title: const Center(child: Text("Baris dan kolom")),
        ),
        body: Column(children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "Baris 1, Kolom 1",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "Baris 1, Kolom 2",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "Baris 1, Kolom 3",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ))))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 2, kolom 1",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 2, kolom 2",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 2, kolom 3",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ))))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 3, kolom 1",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 3, kolom 2",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )))),
              Expanded(
                  child: Container(
                      height: 200,
                      child: const Center(
                          child: Text(
                        "baris 3, kolom 3",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ))))
            ],
          ),
        ]));
  }
}
