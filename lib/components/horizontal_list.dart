import 'package:ecommerce/components/category.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(image_caption:"Accessories", image_location:"images/cats/accessories.png" ,),
          Category(image_caption:"Dress", image_location:"images/cats/dress.png" ,),
          Category(image_caption:"Formals", image_location:"images/cats/formal.png" ,),
          Category(image_caption:"Informals", image_location:"images/cats/informal.png" ,),
          Category(image_caption:"Jeans", image_location:"images/cats/jeans.png" ,),
          Category(image_caption:"Tshirts", image_location:"images/cats/tshirt.png" ,),

        ],
      ),
    );
  }
}
