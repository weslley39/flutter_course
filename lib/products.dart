import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products.map((element) {
        var column = Column(
          children: <Widget>[Image.asset('assets/food.jpg'), Text(element)],
        );
        return Card(
          child: column,
        );
      }).toList(),
    );
  }
}
