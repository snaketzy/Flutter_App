import 'package:flutter/material.dart';

enum ConferenceItem {
  AddMember,
  LockConference,
  ModifyLayout,
  TurnoffAll
}

// 弹出菜单组件
class MyPopupMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "弹出菜单组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("弹出菜单组件"),
        ),
        body: Center(
          child: PopupMenuButton<ConferenceItem>(
            onSelected: (ConferenceItem result){
              print(result);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<ConferenceItem>>[
              PopupMenuItem<ConferenceItem>(child: Text("添加成员"),value: ConferenceItem.AddMember,),
              PopupMenuItem<ConferenceItem>(child: Text("锁定会议"),value: ConferenceItem.LockConference,),
              PopupMenuItem<ConferenceItem>(child: Text("修改布局"),value: ConferenceItem.ModifyLayout,),
              PopupMenuItem<ConferenceItem>(child: Text("挂断所有"),value: ConferenceItem.TurnoffAll,),
            ],
          ),
          ),
        ),
      );
  }
}