import 'package:flutter/material.dart';

// 装饰器
class MyDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "装饰器",
      // home: MyOpacity(),
      // home: MyDecoratedBox(),
      // home: MyBorder(),
      // home: MyShadow(),
      home: MyGradient(),
    );
  }
}


// 透明度
class MyOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("透明度"),),
      body: Center(
        child: Opacity(
          opacity: 0.4,
          child: Container(
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("不透明度位0。4"),
          ),
        ),
      ),
    );
  }
}


// 装饰盒子
class MyDecoratedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("装饰盒子"), centerTitle: true,),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            image: DecorationImage(
              image: ExactAssetImage("assets/images/1.jpg"),
              fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}

// 边框圆角处理
class MyBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("边框圆角处理"), centerTitle: true,),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 3),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            image: DecorationImage(
                image: ExactAssetImage("assets/images/1.jpg"),
                fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}

// 阴影处理
class MyShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("阴影处理"), centerTitle: true,),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 3),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            // boxshadow为什么需要一个List
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.lightGreen, blurRadius: 8, spreadRadius: 8, offset: Offset(-1, 1))
            ],
            image: DecorationImage(
                image: ExactAssetImage("assets/images/1.jpg"),
                fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}


// 渐变处理
class MyGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("渐变处理"), centerTitle: true,),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 3),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.lightGreen, blurRadius: 8, spreadRadius: 8, offset: Offset(-1, 1))
            ],
            // image: DecorationImage(
            //     image: ExactAssetImage("assets/images/1.jpg"),
            //     fit: BoxFit.cover
            // ),
            gradient: LinearGradient(
              begin: FractionalOffset(0.5, 0),
              end: FractionalOffset(1,1),
              colors: <Color>[
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.grey,
              ],
            ),
          ),
          child: Container(
            width: 300,
            height: 300,
            child: Center(
              child: Text("测试", style: TextStyle(fontSize: 36),),
            ),
          ),
        ),
      ),
    );
  }
}