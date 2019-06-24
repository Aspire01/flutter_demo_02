import 'package:flutter/material.dart';
import './expansion_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title:'Flutter bottomNavigationDemo',
        theme: ThemeData.dark(),
        home: ExpansionDemo(),
      ),
    );
  }
}