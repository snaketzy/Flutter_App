import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


// cuptertinoAlertDiaglog组件
class MyCupertinoAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "cuptertinoAlertDiaglog组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("cuptertinoAlertDiaglog组件"),
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text("提示"),
            content: Text("12"),
            actions: <Widget>[
              CupertinoDialogAction(child: Text("确定"), onPressed: () {},),
              CupertinoDialogAction(child: Text("取消"), onPressed: () {}, isDestructiveAction: true,),
            ],
          ),
        ),
      ),
    );
  }
}