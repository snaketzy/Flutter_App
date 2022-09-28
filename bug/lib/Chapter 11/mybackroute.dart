import 'package:flutter/material.dart';

// 页面跳转返回数据
class MyBackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "页面跳转返回数据",
      home: MyFirstPage(),
    );
  }
}


// 第一个页面
class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一个页面"), centerTitle: true,),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

// 路由按钮
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 路由到第二个页面
    _navigateToSecondPage(BuildContext context) async {
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MySecondPage())
      );
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("${result}")));
    }

    return RaisedButton(
        child: Text("跳转到第二个页面"),
        onPressed: () {
          _navigateToSecondPage(context);
        }
    );
  }
}

// 第二个页面
class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二个页面"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context,"hi Google");
                },
                child: Text("hi Google"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, "hi Flutter");
                },
                child: Text("hi Flutter"),
              ),
            )
          ],
        ),
      ),
    );
  }
}