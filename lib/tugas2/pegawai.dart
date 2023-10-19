import 'package:flutter/material.dart';
import './detailpage/pegawai_detail.dart';
import './models/pegawai.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiState();
}

class _PegawaiState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pegawai page")),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pegawai 1"),
                  subtitle: Text("8934732677"),
                ),
              ),
              onTap: () {
                Pegawai pegawaDet = Pegawai(
                    nama: "rostaria",
                    nip: "8934732677",
                    tanggal_lahir: "1999-11-21");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                          pegawai: pegawaDet,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pegawai 2"),
                  subtitle: Text("8934732677"),
                ),
              ),
              onTap: () {
                Pegawai detail = Pegawai(
                    nama: "rosia",
                    nip: "8934732677",
                    tanggal_lahir: "1989-9-15");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                          pegawai: detail,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pegawai 3"),
                  subtitle: Text("8934663477"),
                ),
              ),
              onTap: () {
                Pegawai pegawaDet = Pegawai(
                    nama: "rosaria",
                    nip: "8934663477",
                    tanggal_lahir: "1983-2-15");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                          pegawai: pegawaDet,
                        )));
              }),
          GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("pegawai 4"),
                  subtitle: Text("893466347567"),
                ),
              ),
              onTap: () {
                Pegawai pegawaDet = Pegawai(
                    nama: "godPastra",
                    nip: "893466347567",
                    tanggal_lahir: "1293-9-30");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                          pegawai: pegawaDet,
                        )));
              }),
        ],
      ),
    );
  }
}
