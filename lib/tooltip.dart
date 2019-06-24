import 'package:flutter/material.dart';


class ToolTipDemo extends StatelessWidget {
  const ToolTipDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolTip'),
      ),
      body: Center(
        child: Tooltip(
          message:'哈哈',
          child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561370729548&di=100e3a406c850d5c7be6a1cd71f6a228&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F29%2F20141029093912_J25yG.jpeg',
          ),
        ),
      ),
    );
  }
}

