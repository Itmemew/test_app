class BrandsModel {
  String brand;
  String imagebrand;

  BrandsModel({
    required this.brand,
    required this.imagebrand,
  });

  factory BrandsModel.fromJson(Map<String, dynamic> json) => BrandsModel(
    brand: json["brand"],
    imagebrand: json["imagebrand"],
  );

  Map<String, dynamic> toJson() => {
    "brand": brand,
    "imagebrand": imagebrand,
  };
}
