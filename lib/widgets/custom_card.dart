import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    'HandBag Lv',
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
                        r'$225',
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
              'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              height: 100,
            ))
      ],
    );
  }
}
