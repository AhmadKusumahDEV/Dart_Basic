import 'package:flutter/material.dart';
import './models/poli.dart';
import './services/poli_services.dart';
import './poli_page.dart';

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
        onPressed: () async {
          Poli pol = Poli(namaPoli: _namaPoliCtrl.text.toString());
          await PoliServices().simpan(pol.namaPoli).then((value) =>
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const PoliPage())));
        },
        child: const Text("Simpan"));
  }
}
