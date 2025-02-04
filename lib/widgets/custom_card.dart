import 'package:flutter/material.dart';
import 'package:projects/models/product_model.dart';
import 'package:projects/screens/updateproductpage.dart';
class CustomCard extends StatelessWidget {
   CustomCard({
    required this.product,
    super.key,
  });
 ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,UpdateProductPage.id,arguments: product );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.2), spreadRadius: 0,
                offset: Offset(10, 10), // BoxShadow
              )
            ]), // BoxDecoration
            child: Card(
              elevation: 6,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
      
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         ' \$${product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                    // Row
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 32,
              top: -60,
              child: Image.network(
                product.image,
                //product.image,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
