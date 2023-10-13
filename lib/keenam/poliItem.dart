import 'package:flutter/material.dart';
import 'package:tutordart/models/poli.dart';
import 'package:tutordart/keenam/poli_detail.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;

  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: ListTile(title: Text(poli.namaPoli)),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PoliDetail(
                    poli: poli,
                  )));
        });
  }
}
