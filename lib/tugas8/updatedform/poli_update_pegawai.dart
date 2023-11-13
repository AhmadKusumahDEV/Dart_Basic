import 'package:flutter/material.dart';
import '../models/pegawai.dart';
import '../services/pegawai_serives.dart';
import '../pegawai.dart';

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
  final _namapoliCtrl22 = TextEditingController();
  final _namapoliCtrl23 = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namapoliCtrl.text = widget.pegawai.email;
      _namapoliCtrl2.text = widget.pegawai.nama;
      _namapoliCtrl3.text = widget.pegawai.tanggal_lahir;
      _namapoliCtrl22.text = widget.pegawai.password;
      _namapoliCtrl23.text = widget.pegawai.nomor_telepon;
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
              _fieldNamapoli(_namapoliCtrl, "email"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl22, "password"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl2, "Nama"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl3, "Tanggal Lahir"),
              const SizedBox(height: 20),
              _fieldNamapoli(_namapoliCtrl23, "nomor_telepon"),
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
        onPressed: () async {
          Pegawai poli = Pegawai(
            nip: widget.pegawai.nip,
            nama: _namapoliCtrl2.text,
            email: _namapoliCtrl.text,
            tanggal_lahir: _namapoliCtrl3.text,
            password: _namapoliCtrl22.text,
            nomor_telepon: _namapoliCtrl23.text,
          );
          await PegawaiServices().ubah(poli).then((_) => {
                Navigator.of(context).pop(),
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PegawaiPage(),
                ))
              });
        },
        child: const Text("Simpan perubahan"));
  }
}
