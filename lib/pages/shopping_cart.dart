import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("Shopping cart"),
        actions: [
        new IconButton(
          icon: Icon(Icons.search, color: Colors.white,),
          onPressed: (){},
        ),
        ],
      ),
    );
  }
}
