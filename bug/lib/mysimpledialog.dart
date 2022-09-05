import 'package:flutter/material.dart';

// SimpleDialog组件
class MySimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SimpleDialog组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SimpleDialog组件"),
        ),
        body: Center(
          child: SimpleDialog(
            title: Text("对话框标题"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: Text("第一行信息"),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: Text("第二行信息"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}