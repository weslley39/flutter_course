import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function onPressed;

  ProductControl(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        this.onPressed({'title': 'Chocolate', 'image': 'assets/food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
