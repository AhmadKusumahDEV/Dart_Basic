import 'package:flutter/material.dart';
import './pegawai.dart';
import './pasien.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Main Page")),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Pegawai Page"),
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PegawaiPage(),
              )),
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Pasien Page"),
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PasienPage(),
              )),
            ),
          ],
        ));
  }
}
