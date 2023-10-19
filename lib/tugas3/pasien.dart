import 'package:flutter/material.dart';
import './models/pasien.dart';
import './itemPage/pasien.dart';
import './formtambah.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienState();
}

class _PasienState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pasien")),
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
          ItemPasien(
            pasienItem: Pasien(
                id: 1,
                nama: "rostaria",
                nomor_rm: "8934732677",
                alamat: "pegunungan kalimaya cibodas belok kiri dikit",
                tanggal_lahir: "1999-11-21"),
          ),
          ItemPasien(
            pasienItem: Pasien(
                id: 2,
                nama: "rosia",
                nomor_rm: "8934732677",
                alamat: "pegunungan kalimaya cibodas belok kanan dikit",
                tanggal_lahir: "1989-9-15"),
          ),
          ItemPasien(
            pasienItem: Pasien(
                id: 3,
                nama: "rosaria",
                alamat: "kepenhuluan arah jabodetabek rt 7 rw 2",
                nomor_rm: "8934663477",
                tanggal_lahir: "1983-2-15"),
          ),
          ItemPasien(
            pasienItem: Pasien(
                id: 4,
                nama: "godPastra",
                nomor_rm: "893466347567",
                alamat: "lewat 4 jebra cross belok kiri ambil cipularang",
                tanggal_lahir: "1293-9-30"),
          ),
        ],
      ),
    );
  }
}
