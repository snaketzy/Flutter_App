import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


// 列表及表格组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "列表及表格组件",
      // home: MyListView(),
      // home: MyScrollListView(),
      home: MyGridView(),
    );
  }
}

// ListView组件
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 18);
    return Scaffold(
      appBar: AppBar(title: Text("ListView组件"), centerTitle: true,),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("某店1", style: textStyle,),
            subtitle: Text("某地1"),
            leading: Icon(Icons.fastfood, color: Colors.orange),
          ),
          ListTile(
            title: Text("某店2", style: textStyle,),
            subtitle: Text("某地2"),
            leading: Icon(Icons.local_hospital, color: Colors.greenAccent),
          ),
          ListTile(
            title: Text("某店3", style: textStyle,),
            subtitle: Text("某地3"),
            leading: Icon(Icons.airplane_ticket, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}

// 长文本ListView
class MyScrollListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("长文本ListView"), centerTitle: true,),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text("测试"),
          ),
          Center(
            child: Text("测试内容"),
          ),
          Center(
            child: Text("测试内容测试内,容测试内容测试内容,测试内容测试内容测试内容测试内,容测试\n内容测试内容,测试内容测试内容\n测试内容测试内,容测试内容测试内容,测试内容测试内容"),
          ),
        ],
      ),
    );
  }
}

// GridView示例
class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 生成gridview中的内容
    List<FittedBox> _generateGridTileList(int count) {
      return List<FittedBox>.generate(count, (int index) => FittedBox(
        fit: BoxFit.fill,
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.topLeft,
        child: Container(
           child: ClipRRect(
             borderRadius: BorderRadius.circular(30),
             child:Image.asset("assets/images/${index + 1}.jpg")
           ),
        ),
      ));
    }

    // 生成GridView
    Widget _generateGrid () {
      return GridView.extent(
        maxCrossAxisExtent: 150,
        padding: EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: _generateGridTileList(9),
      );
    }
    
    return Scaffold(
      appBar: AppBar(title: Text("GridView示例"), centerTitle: true,),
      body: _generateGrid(),
    );
  }
}