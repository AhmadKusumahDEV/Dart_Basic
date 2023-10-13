import 'package:flutter/material.dart';
import 'package:tutordart/models/poli.dart';
import 'package:tutordart/kelima/poli_detail.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;

  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        });
  }
}
