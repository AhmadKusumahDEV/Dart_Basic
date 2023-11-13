import 'package:dio/dio.dart';
import '../models/pasien.dart';
import '../helpers/api_client.dart';

class PasienServices {
  Future<List<Pasien>> getPegawai() async {
    final Response res = await Apiclient().getdata("pegawai");
    final List data = res.data as List;
    List<Pasien> result = data.map((e) => Pasien.fromJson(e)).toList();
    return result;
  }

  Future<Pasien> simpan(Pasien pegawai) async {
    var data = pegawai.toJson();
    final Response res = await Apiclient().post("pegawai", data);
    Pasien result = Pasien.fromJson(res.data);
    return result;
  }

  Future<Pasien> ubah(Pasien pegawai, String id) async {
    var data = pegawai.toJson();
    final Response res = await Apiclient().update('pegawai/$id', data);
    Pasien result = Pasien.fromJson(res.data);
    return result;
  }

  Future<Pasien> hapus(Pasien pegawai) async {
    final Response res = await Apiclient().deletee('pegawai/${pegawai.id}');
    Pasien result = Pasien.fromJson(res.data);
    return result;
  }

  Future<Pasien> getbyid(String id) async {
    final Response response = await Apiclient().getdata('pegawai/$id');
    Pasien result = Pasien.fromJson(response.data);
    return result;
  }
}
