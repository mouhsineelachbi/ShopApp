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
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "$product_price MAD",
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                  ),
                  subtitle: Text(
                    "${product_old_price} MAD",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
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
