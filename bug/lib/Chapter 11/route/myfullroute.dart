import 'package:flutter/material.dart';

// 路由模块
class MyFullRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由模块",
      home: MyFirstPage(),
    );
  }
}

// 第一个页面
class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一个页面"),centerTitle: true,),
      body: Center(
        child: RaisedButton(
          child: Text("查看详情"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondPage()));
          },
        ),
      ),
    );
  }
}


// 第二个页面
class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二个页面"), centerTitle: true,),
      body: Center(
        child: RaisedButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}