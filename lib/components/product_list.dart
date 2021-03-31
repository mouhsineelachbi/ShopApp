import 'package:ecommerce/components/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Blazer",
      "picture" : "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Dress",
      "picture" : "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Dress",
      "picture" : "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Hills",
      "picture" : "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Hills",
      "picture" : "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Pants",
      "picture" : "images/products/pants1.jpg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Pants",
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
      "name": "Skirt",
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

