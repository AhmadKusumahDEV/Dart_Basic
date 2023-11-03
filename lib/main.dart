// ignore_for_file: unused_import, avoid_print

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
// import './tugas5/beranda.dart';

// p 11
import './kesebelas/helpers/user_info.dart';
import './kesebelas/beranda.dart';
import './kesebelas/login.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var oken = await Userinfo().getToken();
  print(oken);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: oken == null ? const Login() : const Beranda(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Beranda());
  }
}
