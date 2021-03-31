import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final product_details_name;
  final product_details_picture;
  final product_details_new_price;
  final product_details_old_price;

  ProductDetails({
      this.product_details_name,
      this.product_details_picture,
      this.product_details_new_price,
      this.product_details_old_price
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("Eco App"),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
