import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_color;
  final cart_product_size;
  final cart_product_quantity;

  CartProduct({
    this.cart_product_name,
    this.cart_product_price,
    this.cart_product_picture,
    this.cart_product_color,
    this.cart_product_quantity,
    this.cart_product_size
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        dense:true,
        leading: Image.asset(cart_product_picture),
        title: Text(cart_product_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                // Section for product size
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size : "),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text("${cart_product_size}", style: TextStyle(color: Colors.red),),
                ),
                // Section for product Color
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 1.0, 8.0),
                  child: Text("Color : "),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text("${cart_product_color}", style: TextStyle(color: Colors.red),),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text("${cart_product_price} MAD", style: TextStyle(fontSize: 16.0),),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.centerRight,
              child: Row(
                  children: [
                    new  IconButton(icon: new Icon(Icons.remove),onPressed: (){}),
                    new Text("${cart_product_quantity}"),
                    new IconButton(icon: new Icon(Icons.add),onPressed: (){})
                  ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
