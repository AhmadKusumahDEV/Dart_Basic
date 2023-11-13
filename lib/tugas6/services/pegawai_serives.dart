import 'package:dio/dio.dart';
import '../models/pegawai.dart';
import '../helpers/api_client.dart';

class PegawaiService {
  Future<List<Pegawai>> getPegawai() async {
    final Response res = await Apiclient().getdata("pegawai");
    final List data = res.data as List;
    List<Pegawai> result = data.map((e) => Pegawai.fromJson(e)).toList();
    return result;
  }

  Future<Pegawai> simpan(Pegawai pegawai) async {
    var data = pegawai.toJson();
    final Response res = await Apiclient().post("pegawai", data);
    Pegawai result = Pegawai.fromJson(res.data);
    return result;
  }

  Future<Pegawai> ubah(Pegawai pegawai, String id) async {
    var data = pegawai.toJson();
    final Response res = await Apiclient().update('pegawai/$id', data);
    Pegawai result = Pegawai.fromJson(res.data);
    return result;
  }

  Future<Pegawai> hapus(Pegawai pegawai) async {
    final Response res = await Apiclient().deletee('pegawai/${pegawai.id}');
    Pegawai result = Pegawai.fromJson(res.data);
    return result;
  }

  Future<Pegawai> getbyid(String id) async {
    final Response response = await Apiclient().getdata('pegawai/$id');
    Pegawai result = Pegawai.fromJson(response.data);
    return result;
  }
}
