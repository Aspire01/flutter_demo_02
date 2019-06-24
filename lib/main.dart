import 'package:flutter/material.dart';
import './splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title:'Flutter bottomNavigationDemo',
        theme: ThemeData.light(),
        home: SplashDemo(),
      ),
    );
  }
}