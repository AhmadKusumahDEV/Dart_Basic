import 'package:flutter/material.dart';
import './models/poli.dart';
import './widget/sidebar.dart';
import 'tambahpoli.dart';
import 'package:dio/dio.dart';
import './poliItem.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  List countries = [];

  getCountries() async {
    var response = await Dio().get('http://192.168.1.7:3001/poli/');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data) {
      setState(() {
        countries = data;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          title: const Text("data poli"),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Poliform(),
              )),
            )
          ],
        ),
        body: Visibility(
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              return PoliItem(
                poli: Poli(
                    id: countries[index]['id'],
                    namaPoli: countries[index]['nama_poli']),
              );
            },
          ),
        ));
  }
}
