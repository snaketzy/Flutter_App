import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// CupertinoButton组件
class MyCupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoButton组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CupertinoButton组件")
        ),
        body: Center(
          child: CupertinoButton(
            child: Text(
              "CupertinoButton"
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}