import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString("assets/config.json");
}

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


// 加载图片
class MyJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("加载图片"), centerTitle: true,),
      body: Center(
        child: Image.asset("assets/images/1.jpg")
      ),
    );
  }
}