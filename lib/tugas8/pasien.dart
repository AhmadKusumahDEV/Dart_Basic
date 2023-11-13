import 'package:flutter/material.dart';
import './models/pasien.dart';
import './itemPage/pasien.dart';
import './widget/sidebar.dart';
import 'formtambah/form_tambah_pasien.dart';
import 'package:dio/dio.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienState();
}

class _PasienState extends State<PasienPage> {
  List pasien = [];

  getCountries() async {
    var response = await Dio().get('http://192.168.1.7:3001/pasien/');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data) {
      setState(() {
        pasien = data;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          title: const Center(child: Text("Pasien")),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PoliformPasien(),
              )),
            )
          ],
        ),
        body: Visibility(
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: pasien.length,
            itemBuilder: (context, int index) {
              return ItemPasien(
                pasienItem: Pasien(
                    index: index + 1,
                    nomor_telepon: pasien[index]["nomor_telepon"],
                    id: pasien[index]["id"],
                    nama: pasien[index]["nama"],
                    nomor_rm: pasien[index]["nomor_rm"],
                    alamat: pasien[index]["alamat"],
                    tanggal_lahir: pasien[index]["tanggal_lahir"]),
              );
            },
          ),
        ));
  }
}

// ItemPasien(
//             pasienItem: Pasien(
//                 id: 1,
//                 nama: "rostaria",
//                 nomor_rm: "8934732677",
//                 alamat: "pegunungan kalimaya cibodas belok kiri dikit",
//                 tanggal_lahir: "1999-11-21"),
//           ),
