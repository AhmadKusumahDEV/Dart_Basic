import 'package:flutter/material.dart';
import './models/pasien.dart';
import './detailpage/pasien_detail.dart';

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
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pasien 1"),
                  subtitle: Text("8934732677"),
                ),
              ),
              onTap: () {
                Pasien pasienData = Pasien(
                    nama: "rostaria",
                    nomor_rm: "8934732677",
                    alamat: "pegunungan kalimaya cibodas belok kiri dikit",
                    tanggal_lahir: "1999-11-21");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PasienDetail(
                          pasien: pasienData,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pasien 2"),
                  subtitle: Text("8934732677"),
                ),
              ),
              onTap: () {
                Pasien detail = Pasien(
                    nama: "rosia",
                    nomor_rm: "8934732677",
                    alamat: "pegunungan kalimaya cibodas belok kanan dikit",
                    tanggal_lahir: "1989-9-15");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PasienDetail(
                          pasien: detail,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pasien 3"),
                  subtitle: Text("8934663477"),
                ),
              ),
              onTap: () {
                Pasien pasienData = Pasien(
                    nama: "rosaria",
                    alamat: "kepenhuluan arah jabodetabek rt 7 rw 2",
                    nomor_rm: "8934663477",
                    tanggal_lahir: "1983-2-15");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PasienDetail(
                          pasien: pasienData,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pasien 4"),
                  subtitle: Text("893466347567"),
                ),
              ),
              onTap: () {
                Pasien pasienData = Pasien(
                    nama: "godPastra",
                    nomor_rm: "893466347567",
                    alamat: "lewat 4 jebra cross belok kiri ambil cipularang",
                    tanggal_lahir: "1293-9-30");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PasienDetail(
                          pasien: pasienData,
                        )));
              }),
        ],
      ),
    );
  }
}
