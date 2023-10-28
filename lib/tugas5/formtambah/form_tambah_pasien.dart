import 'package:flutter/material.dart';
import '../detailpage/pasien_detail.dart';
import '../models/pasien.dart';

class PoliformPasien extends StatefulWidget {
  const PoliformPasien({super.key});

  @override
  State<PoliformPasien> createState() => _PoliformState();
}

class _PoliformState extends State<PoliformPasien> {
  final _namaPoliCtrl = TextEditingController();
  final _namaPoliCtrl2 = TextEditingController();
  final _namaPoliCtrl3 = TextEditingController();
  final _namaPoliCtrl4 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamapoli('Name Pegawai', _namaPoliCtrl),
              const SizedBox(height: 20),
              _fieldNamapoli('Nip', _namaPoliCtrl2),
              const SizedBox(height: 20),
              _fieldNamapoli('tanggal_lahir', _namaPoliCtrl3),
              const SizedBox(height: 20),
              _fieldNamapoli('tanggal_lahir', _namaPoliCtrl4),
              const SizedBox(height: 20),
              _tombolsimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamapoli(nameLabel, controller) {
    return TextField(
      decoration: InputDecoration(labelText: "$nameLabel"),
      controller: controller,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien poli = Pasien(
            nama: _namaPoliCtrl.text,
            nomor_rm: _namaPoliCtrl2.text,
            tanggal_lahir: _namaPoliCtrl3.text,
            alamat: _namaPoliCtrl4.text,
          );
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PasienDetail(
              pasien: poli,
            ),
          ));
        },
        child: const Text("Simpan"));
  }
}
