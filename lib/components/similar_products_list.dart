import 'package:ecommerce/components/product.dart';
import "package:flutter/material.dart";


class SimilarProductList extends StatefulWidget {
  @override
  _SimilarProductListState createState() => _SimilarProductListState();
}

class _SimilarProductListState extends State<SimilarProductList> {
  var product_list = [
    {
      "name": "Male Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Female Blazer",
      "picture" : "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Red Dress",
      "picture" : "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Black Dress",
      "picture" : "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Black Hills",
      "picture" : "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Red Hills",
      "picture" : "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Black Pants",
      "picture" : "images/products/pants1.jpg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Grey Pants",
      "picture" : "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Shoe",
      "picture" : "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Skirt",
      "picture" : "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Pink Skirt",
      "picture" : "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 90
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        }
    );
  }
}
