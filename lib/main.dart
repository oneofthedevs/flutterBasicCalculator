import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.light,
        accentColor: Colors.green,
      ),
      home: new HomePage(),
      
    );
  }
}

