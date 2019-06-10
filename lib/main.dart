import 'package:flutter/material.dart';
import 'package:flutter_course/product_manager.dart';

// Short
void main() => runApp(MyApp());

// Normal
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager('Food Tester')),
    );
  }
}
