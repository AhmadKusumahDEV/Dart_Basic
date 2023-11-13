import 'package:flutter/material.dart';
import './models/poli.dart';
import './poli_page.dart';
import 'package:dio/dio.dart';

class Poliform extends StatefulWidget {
  const Poliform({super.key});

  @override
  State<Poliform> createState() => _PoliformState();
}

class _PoliformState extends State<Poliform> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();
  final dio = Dio();

  void postdata(String pol) async {
    final data = {};
    await dio.post('http://192.168.1.7:3001/poli/', data: data);
  }

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
          postdata(pol.namaPoli);
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const PoliPage(),
          ));
        },
        child: const Text("Simpan"));
  }
}
