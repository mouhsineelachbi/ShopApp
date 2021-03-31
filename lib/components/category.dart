import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 129.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100.0, height: 80.0,),
            subtitle: Padding(padding: EdgeInsets.all(10.0),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Text(image_caption)],)),
          ),
        ),
      ),
    );
  }
}
