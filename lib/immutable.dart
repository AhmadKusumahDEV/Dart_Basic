// ignore_for_file: avoid_print
// ignore: unused_import
import './keduabelas/services/poli_services.dart';
import 'package:dio/dio.dart';

class Orang {
  final int x;
  final int y;

  const Orang(this.x, this.y);
}

void main() async {
  final dio = Dio();
  final dat = {
    "nama_poli": "poli kandunganJP",
  };
  await dio.post('http://192.168.1.7:3001/poli/', data: dat);

  var per = const Orang(1, 2);
  var per2 = const Orang(1, 2);

  print(per == per2);
}
