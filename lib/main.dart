import 'package:flutter/material.dart';
// import 'package:tutordart/keenam/models/poli.dart';
// import 'package:tutordart/tugas2/mainpage.dart';
// import 'tampilkan.dart';
// import './tugas2/mainpage.dart';
// import 'tugas1.dart';
// import 'row(remake).dart';
// import './kelima/poli_page.dart';
// import './keenam/poli_page.dart';
// import './tugas3/mainpage.dart';
import './ketujuh/poli_page.dart';
// import './kesembilan/beranda.dart';
import './tugas4/mainpage.dart';
import './tugas5/beranda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}
