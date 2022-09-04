import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FloatingAction示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("FloatingAction示例"),
        ),
        body: Center(
          child: Text("FloatingAction示例", style: TextStyle(fontSize: 30),),
        ),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("你点击了按钮")));
            }
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}