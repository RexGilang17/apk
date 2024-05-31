class PenggunaModel {
  PenggunaModel({
    required this.bagian,
    required this.nama,
    required this.penggunaId,
  });

  final String bagian;
  final String nama;
  final String penggunaId;

  factory PenggunaModel.fromJson(Map<String, dynamic> json) => PenggunaModel(
        bagian: json["bagian"] ?? "",
        nama: json["nama"] ?? "",
        penggunaId: json["penggunaId"] ?? "",
        
      );

  Map<String, dynamic> toJson() => {
        "bagian": bagian,
        "nama": nama,
        "penggunaId": penggunaId,
      };
}
