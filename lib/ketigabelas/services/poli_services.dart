// ignore_for_file: unnecessary_string_interpolations

import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../models/poli.dart';

class PoliServices {
  Future<List<Poli>> getPoli() async {
    final res = await Apiclient().getdata("http://192.168.1.7:3001/poli/");
    return res.data;
  }

  Future<String> simpan(Poli poli) async {
    var data = {"nama_poli": poli.namaPoli};
    final ff = await Apiclient().post("http://192.168.1.7:3001/poli/", data);
    if (ff.statusCode == 201) {
      return '$ff.data';
    } else {
      return '$ff.data';
    }
  }

  Future<String?> ubah(Poli poli) async {
    var data = {"id": poli.id, "nama_poli": poli.namaPoli};
    final Response res =
        await Apiclient().update('http://192.168.1.7:3001/poli/', data);
    if (res.statusCode == 200) {
      return '$res.data';
    } else {
      return '$res.data';
    }
  }

  Future<String> hapus(int poli) async {
    var data = {"id": poli};
    final Response res =
        await Apiclient().deletee("http://192.168.1.7:3001/poli/", data);
    if (res.statusCode == 200) {
      return '$res.data';
    } else {
      return '$res.data';
    }
  }

  Future<Poli> getbyid(String id) async {
    final Response response = await Apiclient().getdata('poli/$id');
    Poli result = Poli.fromJson(response.data);
    return result;
  }
}
