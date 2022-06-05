import 'package:flutter/material.dart';
import 'package:fluttercookapp/home_page.dart';

void main() => runApp(CookApp());

class CookApp extends StatelessWidget {
  const CookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cook App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
