import 'package:car_trading_app/model_app/brands_model/brands_model.dart';
import 'package:flutter/material.dart';

class ProviderBrands with ChangeNotifier{

  List<Map<String,dynamic>> boxdata1 = [
    {
      "brand" : "BMW",
      "imagebrand" : "assets/images/bmw1.png",
    },
    {
      "brand" : "Toyota",
      "imagebrand" : "assets/images/toyota1.png",
    },
    {
      "brand" : "Honda",
      "imagebrand" : "assets/images/Honda1.png",
    }
  ];

  List<BrandsModel> _brandsModel = [];

  Future<void> getBrand() async {
    brandsModel = boxdata1.map((e) => BrandsModel.fromJson(e)).toList();
  }

  List<BrandsModel> get brandsModel => _brandsModel;
  set brandsModel(List<BrandsModel> value){
    _brandsModel = value;
    notifyListeners();
  }


}