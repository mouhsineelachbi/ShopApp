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
              footer: Container(
                height: 50,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    "${widget.product_details_name}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment(0, -4),
                    child: new Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "${widget.product_details_new_price} MAD",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                  decoration: TextDecoration.none),
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "${widget.product_details_old_price} MAD",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Size, color and quantity Buttons
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                    elevation: 0.2,
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: [
                        Expanded(child: Text("Size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      //Expanded(child: Text("Quantity",)),
                      FittedBox(child: Text("Quantity"), fit: BoxFit.cover,),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.1,
                  child: Text("Buy me"),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.red,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.red,)),
            ],
          ),
        ],
      ),
    );
  }
}
