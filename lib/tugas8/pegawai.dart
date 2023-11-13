import 'package:flutter/material.dart';
import './models/pegawai.dart';
import './widget/sidebar.dart';
import './itemPage/pegawai.dart';
import 'package:dio/dio.dart';
import 'formtambah/form_tambah_pegawai.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiState();
}

class _PegawaiState extends State<PegawaiPage> {
  List pegawai = [];

  getCountries() async {
    var response = await Dio().get('http://192.168.1.7:3001/pegawai/');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data) {
      setState(() {
        pegawai = data;
      });
    });
    super.initState();
  }

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
        body: Visibility(
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: pegawai.length,
            itemBuilder: (context, int index) {
              return ItemPegawai(
                pegawaiItem: Pegawai(
                    index: index + 1,
                    id: pegawai[index]["id"],
                    nama: pegawai[index]["nama"],
                    nip: pegawai[index]["nip"],
                    nomor_telepon: pegawai[index]["nomor_telepon"],
                    email: pegawai[index]["email"],
                    tanggal_lahir: pegawai[index]["tanggal_lahir"]),
              );
            },
          ),
        ));
  }
}

              // pegawaiItem: Pegawai(
              //     id: 4,
              //     nama: "godPastra",
              //     nip: "893466347567",
              //     tanggal_lahir: "1293-9-30")),