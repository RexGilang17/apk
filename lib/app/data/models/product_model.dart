class ProductModel {
  final String name;
  final String nip;
  final String code;
  final String category;
  final String spec;
  final String status;
  final String noSeri;
  final DateTime tanggal;

  ProductModel(
      {required this.name,
      required this.nip,
      required this.code,
      required this.category,
      required this.spec,
      required this.status,
      required this.noSeri,
      required this.tanggal});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json['nama_barang'] ?? "",
        nip: json['nip'] ?? "",
        code: json['kode_barang'] ?? "",
        category: json['jenis_barang'] ?? "",
        spec: json['spesifikasi'] ?? "",
        status: json['status_barang'] ?? "",
        noSeri: json['no_seri'] ?? "",
        tanggal: json['tanggal'] ?? DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nip": nip,
        "category": category,
        "code": code,
        "spec": spec,
        "status": status,
        "noSeri": noSeri,
        "tanggal": tanggal
      };
}
