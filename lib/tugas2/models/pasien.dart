// ignore_for_file: non_constant_identifier_names

class Pasien {
  String? id;
  String nomor_rm;
  String nama;
  String tanggal_lahir;
  String? nomor_telepon;
  String alamat;

  Pasien(
      {this.id,
      required this.nama,
      required this.nomor_rm,
      required this.tanggal_lahir,
      this.nomor_telepon = "083746528125",
      required this.alamat});
}
