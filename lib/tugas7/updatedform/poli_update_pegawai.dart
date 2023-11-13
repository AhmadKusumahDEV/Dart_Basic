import 'package:flutter/material.dart';
import '../detailpage/pegawai_detail.dart';
import '../models/pegawai.dart';

class UpdatedFormPegawai extends StatefulWidget {
  final pegawai;
  const UpdatedFormPegawai({super.key, required this.pegawai});

  @override
  State<UpdatedFormPegawai> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UpdatedFormPegawai> {
  final _finalformkey = GlobalKey<FormState>();
  final _namapoliCtrl = TextEditingController();
  final _namapoliCtrl2 = TextEditingController();
  final _namapoliCtrl3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namapoliCtrl.text = widget.pegawai.nip;
      _namapoliCtrl2.text = widget.pegawai.nama;
      _namapoliCtrl3.text = widget.pegawai.tanggal_lahir;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _finalformkey,
          child: Column(
            children: [
              _fieldNamapoli(_namapoliCtrl, "Nip"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl2, "Nama"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl3, "Tanggal Lahir"),
              const SizedBox(height: 20),
              _tombolsimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamapoli(controller, text) {
    return TextField(
      decoration: InputDecoration(labelText: "$text"),
      controller: controller,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai poli = Pegawai(
            nama: _namapoliCtrl2.text,
            nip: _namapoliCtrl.text,
            tanggal_lahir: _namapoliCtrl3.text,
          );
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PegawaiDetail(
              pegawai: poli,
            ),
          ));
        },
        child: const Text("Simpan perubahan"));
  }
}
