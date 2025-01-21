import 'dart:convert';

import 'package:http/http.dart%20';
import 'package:projects/helper/api.dart';
import 'package:projects/models/product_model.dart';

class AllproductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products");

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
//ProductModel.fromJson(data[i]);
      productList.add(ProductModel.fromJson(data[i])); // تضيف المنتج هنا
    }
    return productList;
  }
}
