// ignore_for_file: non_constant_identifier_names

class Pegawai {
  int? id;
  String nip;
  String nama;
  String tanggal_lahir;
  String? nomor_telepon;
  String? email;
  String? password;

  Pegawai(
      {this.id,
      required this.nama,
      required this.nip,
      required this.tanggal_lahir,
      this.nomor_telepon = "09988887887888",
      this.email = "toGet@yahoo.com",
      this.password = "ubsi2021"});

  factory Pegawai.fromJson(Map<String, dynamic> json) {
    return Pegawai(
      id: json['id'],
      nip: json['nip'],
      nama: json['nama'],
      tanggal_lahir: json['tanggal_lahir'],
      nomor_telepon: json['nomor_telepon'],
      email: json['email'],
      password: json['password'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'nip': nip,
      'tanggal_lahir': tanggal_lahir,
      'nomor_telepon': nomor_telepon,
      'email': email,
      'password': password
    };
  }
}
