import 'package:flutter/material.dart';
import '../pegawai.dart';
import '../models/pegawai.dart';
import '../services/pegawai_serives.dart';

class Poliform extends StatefulWidget {
  const Poliform({super.key});

  @override
  State<Poliform> createState() => _PoliformState();
}

class _PoliformState extends State<Poliform> {
  final _namaPoliCtrl = TextEditingController();
  final _namaPoliCtrl2 = TextEditingController();
  final _namaPoliCtrl3 = TextEditingController();
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
          Pegawai poli = Pegawai(
            nama: _namaPoliCtrl.text,
            nip: _namaPoliCtrl2.text,
            tanggal_lahir: _namaPoliCtrl3.text,
          );
          await PegawaiServices().simpan(poli).then((_) => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PegawaiPage(),
                ))
              });
        },
        child: const Text("Simpan"));
  }
}
