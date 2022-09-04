import 'package:flutter/material.dart';

// 水平选项卡完整组件
class MyTabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TabBar示例",
        home: MyTabBar()
    );
  }
}


class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: items.length,
      child: Scaffold(
        appBar: AppBar(
            title: Text("TarBar完整示例"),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView item) {
                return Tab(
                    text: item.title,
                    icon: Icon(item.icon)
                );
              }).toList(),
            )
        ),
        body: TabBarView(
            children: items.map((ItemView item) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: SelectedView(item: item),
              );
            }).toList()
        ),
      ),
    );
  }
}

class ItemView {
  ItemView({required this.title,required this.icon});
  final String title;
  final IconData icon;
}

List<ItemView> items = <ItemView>[
  ItemView(title:"自驾", icon: Icons.directions_car),
  ItemView(title:"自行车", icon: Icons.directions_bike),
  ItemView(title:"轮船", icon: Icons.directions_boat),
  ItemView(title:"公交车", icon: Icons.directions_bus),
  ItemView(title:"火车", icon: Icons.directions_railway),
  ItemView(title:"步行", icon: Icons.directions_walk),
];

class SelectedView extends StatelessWidget {
  SelectedView({Key? key,required this.item}): super(key: key);

  final ItemView item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon, size: 100,),
            Text(item.title, style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}