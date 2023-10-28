import 'package:flutter/material.dart';
import './models/pegawai.dart';
import './widget/sidebar.dart';
import './itemPage/pegawai.dart';
import 'formtambah/form_tambah_pegawai.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiState();
}

class _PegawaiState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Center(child: Text("Pegawai page")),
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
          ItemPegawai(
              pegawaiItem: Pegawai(
                  id: 1,
                  nama: "rostaria",
                  nip: "8934732677",
                  tanggal_lahir: "1999-11-21")),
          ItemPegawai(
              pegawaiItem: Pegawai(
                  id: 2,
                  nama: "rosia",
                  nip: "8934732677",
                  tanggal_lahir: "1989-9-15")),
          ItemPegawai(
              pegawaiItem: Pegawai(
                  id: 3,
                  nama: "rosaria",
                  nip: "8934663477",
                  tanggal_lahir: "1983-2-15")),
          ItemPegawai(
              pegawaiItem: Pegawai(
                  id: 4,
                  nama: "godPastra",
                  nip: "893466347567",
                  tanggal_lahir: "1293-9-30")),
        ],
      ),
    );
  }
}
