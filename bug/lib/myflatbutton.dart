import 'package:flutter/material.dart';

// 扁平按钮示例
class MyFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlatButton扁平按钮示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlatButton扁平按钮示例"),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {

            },
            child: Text("FlatButton", style: TextStyle(fontSize: 20),),
          ),
        ),
      )
    );
  }
}
