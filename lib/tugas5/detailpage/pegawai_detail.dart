import 'package:flutter/material.dart';
import '../models/pegawai.dart';
import '../updatedform/poli_update_pegawai.dart';

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
    var password = widget.pegawai.password;
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
        Text(
          "password Pegawai : $password",
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
        onPressed: () {},
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
