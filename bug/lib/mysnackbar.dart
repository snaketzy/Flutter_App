import 'package:flutter/material.dart';

// snackbar轻量提示组件
class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar轻量提示组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar轻量提示组件"),
        ),
        body: Center(
          child: Text("SnackBar轻量提示组件", style: TextStyle(fontSize: 20),),
        ),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("显示SnackBar")));
            },
            child: Icon(Icons.add),
            shape: CircleBorder(),
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}