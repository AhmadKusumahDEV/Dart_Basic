import 'package:flutter/material.dart';
import '../models/poli.dart';
import 'poli(item).dart';
import 'tambahpoli.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Poliform(),
            )),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          PoliItem(poli: Poli(namaPoli: "poli anak")),
          PoliItem(poli: Poli(namaPoli: "poli kandungan")),
          PoliItem(poli: Poli(namaPoli: "poli gigi")),
          PoliItem(poli: Poli(namaPoli: "poli THT")),
        ],
      ),
    );
  }
}
