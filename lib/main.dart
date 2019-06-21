import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_course/pages/auth.dart';
import 'package:flutter_course/pages/home.dart';

// Short
void main() => runApp(MyApp());

// Normal
// void main() {
//   debugPaintSizeEnabled = true;
//   debugPaintPointersEnabled = true;
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.deepPurple,
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light),
      home: AuthPage(),
    );
  }
}
