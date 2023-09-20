class FirstPageModel {
  String brand;
  String model;
  int price;
  String image;

  FirstPageModel({
    required this.brand,
    required this.model,
    required this.price,
    required this.image,
  });

  factory FirstPageModel.fromJson(Map<String, dynamic> json) => FirstPageModel(
    brand: json["brand"],
    model: json["model"],
    price: json["price"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "brand": brand,
    "model": model,
    "price": price,
    "image": image,
  };
}
