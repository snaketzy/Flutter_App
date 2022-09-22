import 'package:flutter/material.dart';

// 手势检测
class MyGestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "手势检测",
      // home: MyGestureRefactor(),
      home: MyDismissible(),
    );
  }
}


// 各种操作反馈
class MyGestureRefactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("各种操作反馈"), centerTitle: true,),
      body: Center(child: MyButton(),),
    );
  }
}

// 操作按钮
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text("按下", textAlign: TextAlign.center,),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text("测试按钮", style: TextStyle(color: Colors.brown),),
      ),
    );
  }
}

// 滑动删除
class MyDismissible extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(30, (int index) => "列表${index +1}");
    return Scaffold(
      appBar: AppBar(title: Text("滑动删除"), centerTitle: true,),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            var item = items[index];
            return Dismissible(
              key: Key("${UniqueKey()}"),
              onDismissed: (direction) {
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("${item}被删除")));
              },
              child: ListTile(title: Text("${item}")),
            );
          }
      ),
    );
  }
}