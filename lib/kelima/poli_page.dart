import 'package:flutter/material.dart';
import 'poli_detail.dart';
import './models/poli.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data poli")),
      body: ListView(
        children: <Widget>[
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("poli anak"),
                ),
              ),
              onTap: () {
                Poli poliAnak = Poli(namaPoli: "poli anak");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PoliDetail(
                          poli: poliAnak,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("poli kandungan"),
                ),
              ),
              onTap: () {
                Poli poliAnak = Poli(namaPoli: "poli kandungan");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PoliDetail(
                          poli: poliAnak,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("poli gigi"),
                ),
              ),
              onTap: () {
                Poli poliAnak = Poli(namaPoli: "poli gigi");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PoliDetail(
                          poli: poliAnak,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("poli THT"),
                ),
              ),
              onTap: () {
                Poli poliAnak = Poli(namaPoli: "poli THT");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PoliDetail(
                          poli: poliAnak,
                        )));
              }),
        ],
      ),
    );
  }
}
