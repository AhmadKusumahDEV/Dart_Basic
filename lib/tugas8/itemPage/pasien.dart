import 'package:flutter/material.dart';
import '../models/pasien.dart';
import '../detailpage/pasien_detail.dart';

class ItemPasien extends StatelessWidget {
  final Pasien pasienItem;
  const ItemPasien({super.key, required this.pasienItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: ListTile(
            title: Text("pasien ${pasienItem.index}",
                style: const TextStyle(fontSize: 25)),
            subtitle:
                Text(pasienItem.nomor_rm, style: const TextStyle(fontSize: 20)),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PasienDetail(
                    pasien: pasienItem,
                  )));
        });
  }
}
