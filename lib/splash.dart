import 'package:flutter/material.dart';
import './home_page.dart';

class SplashDemo extends StatefulWidget {
  SplashDemo({Key key}) : super(key: key);

  _SplashDemoState createState() => _SplashDemoState();
}

class _SplashDemoState extends State<SplashDemo> with SingleTickerProviderStateMixin {

  AnimationController _controller; // 控制器
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0,end: 1.0).animate(_controller);

    // 监听事件 动画完成之后跳转到首页
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),  (route) => route == null);
      }
    });

    _controller.forward(); // 播放动画
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561370712013&di=40b7f7839774822a78bbbc9425bc857f&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20170726%2F066c053f9e98495fb742f84a83722d74.jpeg',
        scale:2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

