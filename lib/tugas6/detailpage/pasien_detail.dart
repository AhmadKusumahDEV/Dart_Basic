import 'package:flutter/material.dart';
import '../models/pasien.dart';
import '../updatedform/poliupdatedpasien.dart';
import '../pasien.dart';

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
        onPressed: () {
          AlertDialog alertdialog = AlertDialog(
            content: const Text("yakin ingin menghapus ini ?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PasienPage(),
                  ));
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
              builder: (context) => UpdateFormPasien(
                    pasien: widget.pasien,
                  )));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }
}
