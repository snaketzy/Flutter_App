import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Scaffold示例",
        // home: MyScaffoldWidget()
        // home: MyScaffoldStateFull()
        home: MyTabBar()
    );
  }
}

// 无state的示例
class MyScaffoldWidget extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Scaffold示例"),
            leading: Icon(Icons.home),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search),tooltip: "搜索",),
              IconButton(onPressed: () {}, icon: Icon(Icons.add), tooltip: "添加",)
            ],
          ),
          body: Center(
            child: Text("Scaffold"),
          ),
          // bottomNavigationBar: BottomAppBar(
          //   child: Container(height: 50,),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("信息")),
              BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text("通讯录")),
              BottomNavigationBarItem(icon: Icon(Icons.circle), title: Text("发现")),
            ],
            currentIndex: 0,
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.add),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


// 带有State的示例
class MyScaffoldStateFull extends StatefulWidget {
  MyScaffoldStateFull({Key? key}) : super(key: key);
  
  @override 
  MyScaffoldState createState() => MyScaffoldState();
}

class MyScaffoldState extends State<MyScaffoldStateFull> {
  int _selectedIndex = 1;

  final _widgetOptions = <Text>[
    Text("Index0:信息"),
    Text("Index1:通讯录"),
    Text("Index2:发现"),
  ];

  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("BottomNavigationBar示例"),
          ),
          body: Center(
            child: _widgetOptions[_selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("信息")),
              BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text("通讯录")),
              BottomNavigationBarItem(icon: Icon(Icons.circle), title: Text("发现")),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
    );
  }
}


// 水平选项卡组件
class MyTabBar extends StatelessWidget {
  static List<Tab> myTabs = <Tab>[
    Tab(text: "选项卡011"),
    Tab(text: "选项卡20")
  ];

  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar标题"),
            bottom: TabBar(
              tabs: myTabs,
            ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text as String));
          }
        ).toList(),
      ),
     )
    );
  }
}