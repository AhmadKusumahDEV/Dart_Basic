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
}
