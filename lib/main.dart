import 'package:flutter/material.dart';
import 'package:learn/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Octashop',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
