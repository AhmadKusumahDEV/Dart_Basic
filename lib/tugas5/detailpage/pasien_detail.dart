import 'package:flutter/material.dart';
import '../models/pasien.dart';
import '../updatedform/poliupdatedpasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    var nama = widget.pasien.nama;
    var nomorRm = widget.pasien.nomor_rm;
    var tanggalLahir = widget.pasien.tanggal_lahir;
    var nomorTelepon = widget.pasien.nomor_telepon;
    var alamat = widget.pasien.alamat;
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
          "Nip Pegawai : $nomorRm",
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
          maxLines: 1,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        const SizedBox(height: 20),
        Text(
          " alamat Pegawai : $alamat",
          overflow: TextOverflow.ellipsis,
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
              builder: (context) => UpdateFormPasien(
                    pasien: widget.pasien,
                  )));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }
}
