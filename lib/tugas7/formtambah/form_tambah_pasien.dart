import 'package:flutter/material.dart';
import '../models/pasien.dart';
import '../services/pasien_services.dart';
import '../pasien.dart';

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
  final _namaPoliCtrl5 = TextEditingController();
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
              _fieldNamapoli('Name', _namaPoliCtrl),
              const SizedBox(height: 20),
              _fieldNamapoli('tanggal_lahir', _namaPoliCtrl2),
              const SizedBox(height: 20),
              _fieldNamapoli('nomor_telepon', _namaPoliCtrl3),
              const SizedBox(height: 20),
              _fieldNamapoli('alamat', _namaPoliCtrl4),
              const SizedBox(height: 20),
              _fieldNamapoli('nomor_rm', _namaPoliCtrl5),
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
        onPressed: () async {
          Pasien poli = Pasien(
            nomor_rm: _namaPoliCtrl5.text.toString(),
            nama: _namaPoliCtrl.text.toString(),
            nomor_telepon: _namaPoliCtrl3.text.toString(),
            tanggal_lahir: _namaPoliCtrl2.text.toString(),
            alamat: _namaPoliCtrl4.text.toString(),
          );
          await PasienServices().simpan(poli).then((value) =>
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const PasienPage())));
        },
        child: const Text("Simpan"));
  }
}
