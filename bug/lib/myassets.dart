import 'package:flutter/material.dart';

// 加载资源文件
class MyAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "加载资源文件",
      home: MyJson(),
    );
  }
}


// 加载json
class MyJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("加载json"), centerTitle: true,),
      body: ,
    );
  }
}