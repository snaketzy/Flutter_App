import 'package:flutter/material.dart';

// AlertDialog示例
class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AlertDialog示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog示例"),
        ),
        body: Center(
          child: AlertDialog(
            title: Text("提示"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("是否要删除"),
                  Text("删除不可恢复"),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(onPressed: () {}, child: Text("确定")),
              FlatButton(onPressed: () {}, child: Text("取消")),
            ],
          ),
        ),
      ),
    );
  }
}