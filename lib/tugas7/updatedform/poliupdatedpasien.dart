import 'package:flutter/material.dart';
import '../detailpage/pasien_detail.dart';
import '../models/pasien.dart';

class UpdateFormPasien extends StatefulWidget {
  final pasien;
  const UpdateFormPasien({super.key, required this.pasien});

  @override
  State<UpdateFormPasien> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UpdateFormPasien> {
  final _finalformkey = GlobalKey<FormState>();
  final _namapoliCtrl = TextEditingController();
  final _namapoliCtrl2 = TextEditingController();
  final _namapoliCtrl3 = TextEditingController();
  final _namapoliCtrl4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namapoliCtrl.text = widget.pasien.nomor_rm;
      _namapoliCtrl2.text = widget.pasien.nama;
      _namapoliCtrl3.text = widget.pasien.tanggal_lahir;
      _namapoliCtrl4.text = widget.pasien.alamat;
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
              _fieldNamapoli(_namapoliCtrl2, "Nama"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl, "Nomor_RM"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl3, "Tanggal Lahir"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl4, "Alamat"),
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
          Pasien poli = Pasien(
              nama: _namapoliCtrl2.text,
              nomor_rm: _namapoliCtrl.text,
              tanggal_lahir: _namapoliCtrl3.text,
              alamat: _namapoliCtrl4.text);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PasienDetail(
              pasien: poli,
            ),
          ));
        },
        child: const Text("Simpan perubahan"));
  }
}
