import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  List<Datum> data;
  String message;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  Datum({
    this.id,
    this.productName,
    this.productDetail,
    this.productBarcode,
    this.productQty,
    this.productPrice,
    this.productImage,
    this.productCategory,
    this.productStatus,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String productName;
  String productDetail;
  String productBarcode;
  int productQty;
  String productPrice;
  String productImage;
  String productCategory;
  int productStatus;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        productName: json["product_name"],
        productDetail: json["product_detail"],
        productBarcode: json["product_barcode"],
        productQty: json["product_qty"],
        productPrice: json["product_price"],
        productImage: json["product_image"],
        productCategory: json["product_category"],
        productStatus: json["product_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "product_detail": productDetail,
        "product_barcode": productBarcode,
        "product_qty": productQty,
        "product_price": productPrice,
        "product_image": productImage,
        "product_category": productCategory,
        "product_status": productStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
