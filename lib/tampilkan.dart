import 'listitem.dart';
import 'model.dart';
import 'package:flutter/material.dart';

class ListViewActivity extends StatefulWidget {
  const ListViewActivity({super.key});

  @override
  State<StatefulWidget> createState() => ListViewActivityState();
}

class ListViewActivityState extends State<ListViewActivity> {
  List<UserModel> data = [
    UserModel(1, "IK", "Ikhwan Koto", "Sistem Informasi"),
    UserModel(2, "PA", "Pake Arrayid", "Fisika"),
    UserModel(3, "RK", "Ryan Kimo", "Olah Raga"),
    UserModel(4, "AM", "Arif Mahran", "Biologi"),
    UserModel(5, "NH", "Nurrahman Hado", "Sistem Komputer"),
    UserModel(6, "AN", "Ade Nuri", "Psikologi"),
    UserModel(7, "FC", "Fitriani Chairi", "Ilmu Komputer"),
    UserModel(8, "EA", "Elsa Aprilio", "Teknik Mesin"),
    UserModel(9, "PC", "Putri Coti", "Teknik Industri"),
    UserModel(10, "SE", "cahyo", "MTKI"),
    UserModel(11, "AP", "lanmda", "Geolocation"),
    UserModel(12, "IS", "rusdahna", "Geohydro"),
    UserModel(13, "LO", "rapatar", "Geografi"),
    UserModel(14, "GD", "Saputra Enriko", "Geografi"),
    UserModel(15, "VD", "Saputra Enriko", "Geografi"),
    UserModel(16, "SEW", "Saputra Enriko", "Geografi"),
    UserModel(17, "DGE", "Saputra Enriko", "Geografi"),
    UserModel(18, "HVE", "Saputra Enriko", "Geografi"),
    UserModel(19, "SEFE", "Saputra Enriko", "Geografi"),
    UserModel(20, "SDS", "Saputra Enriko", "Geografi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "ListView.Builder",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 24),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemUser(index, data[index]);
            }),
      ),
    );
  }
}
