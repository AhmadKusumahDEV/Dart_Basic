// ignore_for_file: non_constant_identifier_names

class Pasien {
  int? index;
  int? id;
  String nomor_rm;
  String nama;
  String tanggal_lahir;
  String nomor_telepon;
  String alamat;

  Pasien(
      {this.id,
      this.index,
      required this.nama,
      required this.nomor_rm,
      required this.tanggal_lahir,
      required this.nomor_telepon,
      required this.alamat});

  factory Pasien.fromJson(Map<String, dynamic> json) {
    return Pasien(
      id: json['id'],
      nomor_rm: json['nomor_rm'],
      nama: json['nama'],
      tanggal_lahir: json['tanggal_lahir'],
      nomor_telepon: json['nomor_telepon'],
      alamat: json['alamat'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'nomor_rm': nomor_rm,
      'tanggal_lahir': tanggal_lahir,
      'nomor_telepon': nomor_telepon,
      'alamat': alamat
    };
  }
}
