import 'package:flutter/material.dart';
import '../models/pegawai.dart';
import '../detailpage/pegawai_detail.dart';

class ItemPegawai extends StatelessWidget {
  final Pegawai pegawaiItem;
  const ItemPegawai({super.key, required this.pegawaiItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: ListTile(
            title: Text(
              "pegawai : ${pegawaiItem.id}",
              style: const TextStyle(fontSize: 25),
            ),
            subtitle: Text("Nip : ${pegawaiItem.nip}",
                style: const TextStyle(fontSize: 20)),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PegawaiDetail(
                    pegawai: pegawaiItem,
                  )));
        });
  }
}
