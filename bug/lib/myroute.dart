import 'package:flutter/material.dart';

// route组件
class MyRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Route示例",
      home: MyRoutePage(),
      // 路由配置
      routes: {
        "/first": (BuildContext context) => FirstRoutePage(),
        "/second": (BuildContext context) => SecondRoutePage(),
      },
      initialRoute: "/first",
    );
  }
}

class MyRoutePage extends StatefulWidget {
  @override
  MyRoutePageState createState() => MyRoutePageState();
}

class MyRoutePageState extends State<MyRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route示例"),),
      body: Center(
        child: Text("主页"),
      ),
    );
  }
}

//第一个路由页面
class FirstRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一页"),),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text("这是第一页"),
        )
      ),
    );
  }
}


//第二个路由页面
class SecondRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二页"),),
      body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/first");
            },
            child: Text("这是第二页"),
          )
      ),
    );
  }
}