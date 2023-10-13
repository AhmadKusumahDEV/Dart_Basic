import 'package:flutter/material.dart';

class Poliform extends StatefulWidget {
  const Poliform({super.key});

  @override
  State<Poliform> createState() => _PoliformState();
}

class _PoliformState extends State<Poliform> {
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
              TextFormField(
                  decoration: const InputDecoration(labelText: "nama poli")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
