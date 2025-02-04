import 'package:flutter/material.dart';
import 'package:projects/models/product_model.dart';
import 'package:projects/services/update_product.dart';
import 'package:projects/widgets/custom_button.dart';
import 'package:projects/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'update product';

  String? productName, desc, image;
  String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Product ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              CustomTextFormField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                onChanged: (data) {
                  desc = data;
                },
                hintText: 'description',
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                  //data as int?
                },
                hintText: 'price',
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'image',
              ),
              SizedBox(height: 30),
              CustomButton(
                button_name: "Update",
                onTap: () {
                  UpdateProductService().updateProduct(
                      title: productName!,
                      price: price!,
                      desc: desc!,
                      image: image!,
                      category: product.category);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
