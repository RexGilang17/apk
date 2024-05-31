class ProductModel {
  ProductModel({
    required this.code,
    required this.name,
    required this.productId,
    required this.spesifikasi,
    required this.jenisbarang,
    required this.qty,
  });

  final String productId;
  final String code;
  final String name;
  final String spesifikasi;
  final String jenisbarang;
  final int qty;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        code: json["code"] ?? "",
        name: json["name"] ?? "",
        productId: json["productId"] ?? "",
        spesifikasi: json["spesifikasi"] ?? "",
        jenisbarang: json["jenisbarang"] ?? "",
        qty: json["qty"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "productId": productId,
        "spesifikasi": spesifikasi,
        "jenisbarang": jenisbarang,
        "qty": qty,
      };
}
