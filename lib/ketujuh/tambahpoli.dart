import 'package:flutter/material.dart';
import './models/poli.dart';
import './poli_detail.dart';

class Poliform extends StatefulWidget {
  const Poliform({super.key});

  @override
  State<Poliform> createState() => _PoliformState();
}

class _PoliformState extends State<Poliform> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamapoli(),
              const SizedBox(height: 20),
              _tombolsimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamapoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "nama poli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PoliDetail(
              poli: poli,
            ),
          ));
        },
        child: const Text("Simpan"));
  }
}
