import 'package:flutter/material.dart';

/*
 * 抽屉组件 https://api.flutter-io.cn/flutter/material/Drawer-class.html
 * AssetImage https://api.flutter-io.cn/flutter/painting/AssetImage-class.html
 * AssetImage https://doc.flutterchina.club/assets-and-images/
 */
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer组件示例",
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer组件示例"),),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("test"),
                accountEmail: Text("11@163.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/1.jpg"),
                ),
                onDetailsPressed: () {},

              ),
              ListTile(leading: CircleAvatar(child: Icon(Icons.color_lens),),title: Text("个性装扮"),),
              ListTile(leading: CircleAvatar(child: Icon(Icons.photo),),title: Text("我的相册")),
            ],
          ),
        ),
      ),
    );
  }
}