import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// 宽高尺寸处理
class MyBoxsizeHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "宽高尺寸处理",
      // home: MySizedBox(),
      home: MyConstrainedBox(),
    );
  }
}


// 设置具体尺寸
class MySizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox设置具体尺寸"), centerTitle: true,),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Container(
          color: Colors.indigoAccent,
          width: 300,
          height: 300,
          child: Text("内层测试", style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}

// 限定最大最小宽高布局
class MyConstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("限定最大最小宽高布局"), centerTitle: true),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 220,
          maxHeight: 220,
        ),
        child: Container(
          width: 110,
          height: 110,
          color: Colors.green,
        ),
      )
    );
  }
}