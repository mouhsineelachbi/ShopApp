import 'package:ecommerce/components/cart_product.dart';
import 'package:flutter/material.dart';

class CartProductList extends StatefulWidget {
  @override
  _CartProductListState createState() => _CartProductListState();
}

class _CartProductListState extends State<CartProductList> {
  var Product_in_cart = [
    {
      "name": "Skirt",
      "picture" : "images/products/skt1.jpeg",
      "price": 90,
      "size": "M",
      "color": "Red",
      "quantity": 3,
    },
    {
      "name": "Pink Skirt",
      "picture" : "images/products/skt2.jpeg",
      "price": 140,
      "size": "M",
      "color": "Pink",
      "quantity": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: Product_in_cart.length,
      itemBuilder: (context, index){
        return CartProduct(
          cart_product_name: Product_in_cart[index]['name'],
          cart_product_picture: Product_in_cart[index]['picture'],
          cart_product_price: Product_in_cart[index]['price'],
          cart_product_size: Product_in_cart[index]['size'],
          cart_product_color: Product_in_cart[index]['color'],
          cart_product_quantity: Product_in_cart[index]['quantity'],
        );
      },
    );
  }
}
