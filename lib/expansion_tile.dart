import 'package:flutter/material.dart';

class ExpansionDemo extends StatelessWidget {
  const ExpansionDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Demo'),
      ),
      body: Center(
          child: Container(
        child: ExpansionTile(
          title: Text('Expansion Tile '), // 用户不点击的时候展示的
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.redAccent, // 打开时背景色
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            )
          ],
        ),
        width: 300,
      )),
    );
  }
}
