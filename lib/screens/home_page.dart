import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projects/models/product_model.dart';
import 'package:projects/services/get_all_product_service.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(FontAwesomeIcons.cartArrowDown))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Trend",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 26, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
            future: AllproductsServices().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // While waiting for data, show a loading indicator
                return const Center(child: CircularProgressIndicator());
              }
              /*else if (snapshot.data == null || snapshot.data!.isEmpty) {
                return const Center(child: Text("No products available"));
              }*/
              else if (snapshot.hasError) {
                // If there's an error, display an error message
                return Center(child: Text("Error: ${snapshot.error}"));
              }
              else if (snapshot.hasData) {

              List<ProductModel> products = snapshot.data!;

                return GridView.builder(
                    itemCount: products.length,
                    clipBehavior: Clip.none,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 100),
                    itemBuilder: (context, index) {
                      return CustomCard(product: products[index]);
                    });
             }
              else {
                // Handle the case where there's no data
                return const Center(child: Text("No products available"));
              }

              //  product: products[index]
            }),
      ),
    );
  }
}
