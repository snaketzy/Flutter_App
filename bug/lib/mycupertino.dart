import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Cupertino组件
class MyCuptertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cupertino组件",
      home: Scaffold(
        appBar: AppBar(title: Text("Cupertino组件")),
        body: Center(
          child: Text(""),
        ),
      ),

    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState () => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                title: Text("主页")
            )
          ],
      ),
      tabBuilder: (context, index) {
        return Text("test");
      },
    );
  }
}