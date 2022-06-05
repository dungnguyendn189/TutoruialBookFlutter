import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fooderlich_theme.dart';


void main() => runApp(
      Fooderlich(),
    );

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.light();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: 'FooderLich',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('FooderLich',style: theme.textTheme.headline1,textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Center(
          child: Text('Tao Đục cho Khô Máu',style: theme.textTheme.headline1,),
        ),
      ),
    );
  }
}
