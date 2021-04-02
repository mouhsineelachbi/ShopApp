import 'package:ecommerce/main.dart';
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
        title: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          child: Text("ISSWA Fashion"),
        ),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
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
                    alignment: Alignment(0, -0.2),
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
          Divider(),
          ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non lorem eget turpis sagittis scelerisque. Aenean elit neque, vestibulum at luctus sed, tempor nec eros. Ut ac orci turpis. Praesent luctus dapibus lorem, volutpat elementum est egestas vel. Etiam sit amet fermentum libero. Donec at interdum sem, a iaculis neque. Donec sollicitudin purus libero, ut rutrum lectus faucibus id. Fusce blandit purus lobortis dolor porta ullamcorper. Phasellus placerat varius maximus. Curabitur facilisis elit sed leo sagittis, cursus dignissim risus ultricies. Integer quis scelerisque justo. Praesent gravida sapien at lacus pharetra, nec rhoncus libero ultricies. Cras tincidunt est euismod leo semper tincidunt. Curabitur pretium mi neque, ut viverra nibh sollicitudin non"),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("${widget.product_details_name}"),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                //Todo: Create product brand
                child: new Text("Brand X "),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                //Todo: Add product condition
                child: new Text("Condition"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
