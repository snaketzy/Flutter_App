import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// 指示器组件示例
class MyActivityIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "指示器组件示例",
      home: Scaffold(
        appBar: AppBar(
          title:Text( "指示器组件示例"),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 20,
          ),
        ),
      ),
    );
  }
}