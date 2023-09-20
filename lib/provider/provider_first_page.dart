import 'package:car_trading_app/model_app/first_page_model.dart';
import 'package:flutter/material.dart';

class ProviderFirstPage with ChangeNotifier {
  List<Map<String, dynamic>> boxData = [
    {
      "brand": "BMW",
      "model": "XC4",
      "price": 89000,
      "image": "assets/images/carbmw1.png",
    },
    {
      "brand": "BMW",
      "model": "Series9",
      "price": 49000,
      "image": "assets/images/carbmw2.png",
    },
    {
      "brand": "BMW",
      "model": "Series10",
      "price": 100000,
      "image": "assets/images/carbmw3.png",
    },
    {
      "brand": "Toyota",
      "model": "Colola5",
      "price": 39000,
      "image": "assets/images/cartoyota1.png",
    },
    {
      "brand": "Toyota",
      "model": "Colola7",
      "price": 49000,
      "image": "assets/images/cartoyota2.png",
    },
    {
      "brand": "Honda",
      "model": "City",
      "price": 39000,
      "image": "assets/images/carhonda1.png",
    },
    {
      "brand": "Honda",
      "model": "Civic",
      "price": 59000,
      "image": "assets/images/carhonda2.png",
    },
  ];

  List<FirstPageModel> _firstPageModel = [];

  String _search = '';
  String? _filterSelect;

  Future<void> getControl() async {
    firstPageModel = boxData.map((e) => FirstPageModel.fromJson(e)).toList();
  }

  List<FirstPageModel> get firstPageModel => _firstPageModel.where((element) => '${element.model}${element.brand}'.toLowerCase().contains(search.toLowerCase())).toList().where((element) => filterSelect == null ? true : element.brand.toLowerCase() == filterSelect!.toLowerCase()).toList();

  set firstPageModel(List<FirstPageModel> value) {
    _firstPageModel = value;
    notifyListeners();
  }

  String get search => _search;

  set search(String value) {
    _search = value;
    notifyListeners();
  }

  String? get filterSelect => _filterSelect;

  set filterSelect(String? value) {
    _filterSelect = value;
    notifyListeners();
  }
}
