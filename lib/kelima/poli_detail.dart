import 'package:flutter/material.dart';
import '../models/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _poliDetailState();
}

class _poliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poli detail"),
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Text(
          "Nama Poli : $widget.poli.namaPoli",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Ubah"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Hapus"),
            )
          ],
        )
      ]),
    );
  }
}
