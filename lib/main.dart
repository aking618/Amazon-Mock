import 'package:amazon_mock/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Mock',
      theme: ThemeData(
        fontFamily: 'AmazonEmber',
      ),
      home: const Home(),
    );
  }
}
