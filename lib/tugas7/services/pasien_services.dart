// ignore_for_file: unnecessary_string_interpolations
import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../models/pasien.dart';

class PasienServices {
  Future<String> simpan(Pasien pasien) async {
    int integervalue = int.parse(pasien.nomor_telepon);
    var data = {
      "nomor_rm": pasien.nomor_rm,
      "nama": pasien.nama,
      "tanggal_lahir": pasien.tanggal_lahir,
      "nomor_telepon": integervalue,
      "alamat": pasien.alamat
    };
    final ff = await Apiclient().post("http://192.168.1.7:3001/pasien/", data);
    if (ff.statusCode == 201) {
      return '$ff.data';
    } else {
      return '$ff.data';
    }
  }

  Future<String?> ubah(Pasien pasien) async {
    var data = {
      "nomor_rm": pasien.nomor_rm,
      "nama": pasien.nama,
      "tanggal_lahir": pasien.tanggal_lahir,
      "nomor_telepon": pasien.nomor_telepon,
      "alamat": pasien.alamat
    };
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

  // Future<Poli> getbyid(String id) async {
  //   final Response response = await Apiclient().getdata('poli/$id');
  //   Poli result = Poli.fromJson(response.data);
  //   return result;
  // }
}
