import 'package:bug/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Cupertino组件
class MyCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cupertino组件",
      home: MyPage(),
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
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text("聊天")
            ),
          ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch( index ) {
              case 0:
                return HomePage();
                break;
              case 1:
                return ChatPage();
                break;
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("主页")
      ),
      child: Center(
        child: Text("主页",style: Theme.of(context).textTheme.button,),
      ),
    );
  }
}


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("聊天面板"),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Text("聊天面板",style: Theme.of(context).textTheme.button,),
      ),
    );
  }
}