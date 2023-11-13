import 'package:flutter/material.dart';
import '../models/pegawai.dart';
import '../updatedform/poli_update_pegawai.dart';
import '../pegawai.dart';
import '../services/pegawai_serives.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    var nama = widget.pegawai.nama;
    var nip = widget.pegawai.nip;
    var tanggalLahir = widget.pegawai.tanggal_lahir;
    var nomorTelepon = widget.pegawai.nomor_telepon;
    var email = widget.pegawai.email;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pegawai detail"),
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Text(
          "Nama Pegawai : $nama",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          "Nip Pegawai : $nip",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          "Tanggal lahir Pegawai : $tanggalLahir",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          "nomor Pegawai  : $nomorTelepon",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          " email Pegawai : $email",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_tombolsimpan(), _tombolHapus()],
        )
      ]),
    );
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertdialog = AlertDialog(
            content: const Text("yakin ingin menghapus ini ?"),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  var plid = widget.pegawai.id;
                  await PegawaiServices().hapus(plid!).then((_) => {
                        Navigator.of(context).pop(),
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PegawaiPage(),
                        ))
                      });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("YA"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("TIDAK"),
              ),
            ],
          );
          showDialog(context: context, builder: (context) => alertdialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UpdatedFormPegawai(
                    pegawai: widget.pegawai,
                  )));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }
}
