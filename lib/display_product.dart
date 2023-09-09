import 'package:flutter/material.dart';

class DisplayProduct extends StatelessWidget {
  var product;
  DisplayProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text("${product.id.toString()}) ", style: TextStyle(fontSize: 18),),
          Image.network(product.images![0], width: 150, height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title.toString()),
                Text(product.brand.toString()),
                Text(product.category.toString()),
                Text(product.description.toString()),
                Text(product.discountPercentage.toString()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
