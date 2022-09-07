import 'package:flutter/material.dart';

// 卡片组件
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"卡片组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("卡片组件"),
        ),
        body: Center(
          child: SizedBox(
            height: 250.0,
            child: Card(
              child: Column(
                children: <Widget>[
                  ListTile(title: Text("道路1"), subtitle: Text("左侧"), leading: Icon(Icons.home),),
                  Divider(),
                  ListTile(title: Text("道路2"), subtitle: Text("左侧"), leading: Icon(Icons.school),),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}