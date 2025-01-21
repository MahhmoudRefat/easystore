import 'dart:convert';

import 'package:projects/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllproductsServices{
Future<List<ProductModel>> getAllProducts() async{
  http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  List<dynamic> data = jsonDecode(response.body);
  List<ProductModel> productList = [];
  for(int i = 0 ; i < data.length;i++){
//ProductModel.fromJson(data[i]);
productList.add(ProductModel.fromJson(data[i])); // تضيف المنتج هنا

}
  return productList;
}

}