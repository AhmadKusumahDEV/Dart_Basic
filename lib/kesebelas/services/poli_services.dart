import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../models/poli.dart';

class PoliServices {
  Future<List<Poli>> getPoli() async {
    final res = await Apiclient().getdata("http://localhost:3001/poli/");
    final List data = res.data;
    List<Poli> result = data.map((e) => Poli.fromJson(e)).toList();
    return result;
  }

  Future<Poli> simpan(Poli poli) async {
    var data = poli.toJson();
    final Response res =
        await Apiclient().post("http://192.168.1.7:3001/poli/", data);
    return res.data;
  }

  Future<Poli> ubah(Poli poli, String id) async {
    var data = poli.toJson();
    final Response res = await Apiclient().update('poli/$id', data);
    Poli result = Poli.fromJson(res.data);
    return result;
  }

  Future<Poli> hapus(Poli poli) async {
    final Response res = await Apiclient().deletee('poli/${poli.id}');
    Poli result = Poli.fromJson(res.data);
    return result;
  }

  Future<Poli> getbyid(String id) async {
    final Response response = await Apiclient().getdata('poli/$id');
    Poli result = Poli.fromJson(response.data);
    return result;
  }
}
