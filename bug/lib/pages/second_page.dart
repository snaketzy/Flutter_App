import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

// 第二个页面
class SimpleComponent extends StatelessWidget {
  SimpleComponent({String? goodId}): this.goodId = goodId;
  // SecondPage(this.goodId);
  final String? goodId;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("第二个页面"), centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("${goodId}"),
              Padding(padding: EdgeInsets.all(8),child: RaisedButton(onPressed: () {
                FluroRouter.appRouter.pop(context, goodId);
              }, child: Text("点击返回"),),)
            ],
          ),
        ) ,
      ),
    );
  }
}