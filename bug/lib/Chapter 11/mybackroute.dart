import 'package:flutter/material.dart';

// 页面跳转返回数据
class MyBackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "页面跳转返回数据",
      home: ,
    );
  }
}


// 第一个页面
class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一个页面"), centerTitle: true,),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}


class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _navigateToSecondPage()

    return RaisedButton(
        child: Text("跳转到第二个页面"),
        onPressed: () {
          _navigateToSecondPage(context);
        }
    );
  }
}
