import 'package:flutter/material.dart';
import 'package:fashioncart/user_screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Cart',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent
      ),
      home: HomePage(),
    );
  }
}
