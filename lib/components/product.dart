import 'package:ecommerce/pages/product_details.dart';
import "package:flutter/material.dart";


class Product extends StatelessWidget {

  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                 new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    product_details_name: product_name,
                    product_details_picture: product_picture,
                    product_details_new_price: product_price,
                    product_details_old_price: product_old_price,
                  )
              ),
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("${product_name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("${product_price} MAD", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
