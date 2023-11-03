import 'package:flutter/material.dart';
import './models/poli.dart';
import 'poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final poli;
  const PoliUpdateForm({super.key, required this.poli});

  @override
  State<PoliUpdateForm> createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _finalformkey = GlobalKey<FormState>();
  final _namapoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namapoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _finalformkey,
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
      controller: _namapoliCtrl,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = Poli(namaPoli: _namapoliCtrl.text);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PoliDetail(
              poli: poli,
            ),
          ));
        },
        child: const Text("Simpan perubahan"));
  }
}
