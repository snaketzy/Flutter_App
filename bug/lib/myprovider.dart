import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        )
      ],
      child: MaterialApp(
        title: "Provider示例",
        home: FirstPage(),
      ),
    );
  }
}

// 第一个页面
class FirstPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SecondPage();
              })
            ),
            child: Text("下一页"),
          )
        ],
      ),
      body: Center( 
        child: Text("${Provider.of<Counter>(context).value}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// 第二个页面
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context).value}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


/**
 * 数据model，本质为状态
 * 通过mixin使用
 */
class Counter with ChangeNotifier {
  int value = 0;
  // 暴露获得数据的方法
  int get count => value;

  // 暴露更改数据的方法
  void increment() {
    value++;
    // 通知听众进行刷新
    notifyListeners();
  }
}

