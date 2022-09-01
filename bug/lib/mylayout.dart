
import 'package:flutter/material.dart';

// 布局测试 
class MyLayout extends StatelessWidget {

  var itemsContent = new List<String>.generate(500, (index) => "Item ${index}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "布局测试",
     home: Scaffold(
        appBar: AppBar(
          title: Text("布局测试")
        ),
        body: Center(
          // child: Text("布局测试"),
          // child: MyContainer()
          // child: MyImage()
          // child: MyText()
          // child: MyIcon()
          // child: MyIconButton()
          // child: MyRaisedButton()
          // child: MyListView()
          // child: MyLongListView(items:itemsContent)
          // child: MyGridView()
          child: MyForm()
        ),
      ),
    );
  }
}

// Container组件 https://api.flutter-io.cn/flutter/widgets/Container-class.html
class MyContainer extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.amber[600],
        border: new Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Text(
        "Flutter Container",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

// 图片组件 https://api.flutter-io.cn/flutter/widgets/Image-class.html
class MyImage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Image.network(
      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      fit: BoxFit.fitWidth,
    );
  }
}

// 文本组件 https://api.flutter-io.cn/flutter/widgets/Text-class.html
class MyText extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "红色字体",
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 18,
              letterSpacing: 2
            ),
          ),
          Text(
            "橙色",
            style: TextStyle(
              color: Color(0xffff9900),
              fontSize: 24
            ),
          )
        ],
      );
  }
}

// 图标组件 https://api.flutter-io.cn/flutter/widgets/Icon-class.html
class MyIcon extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Icon(
      Icons.phone,
      color: Colors.green,
      size: 80
    );
  }
}

// 图标按钮组件 https://api.flutter-io.cn/flutter/material/IconButton-class.html
class MyIconButton extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {

      },
      tooltip: "按下操作",
      icon: Icon(Icons.volume_mute)
    );
  }
}

// 凸起按钮组件
class MyRaisedButton extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {

      },
      child: Text("凸起按钮组件"),
    );
  }
}

// 列表组件
class MyListView extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Alarm"),
        )
      ],
    );
  }
}

// 长列表组件
class MyLongListView extends StatelessWidget {
  
  final List<String> items;

  MyLongListView({Key? key, required this.items}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index) {
        return ListTile(
          leading: Icon(Icons.phone),
          title: Text("${items[index]}"),
        );
      }
    );
  }
}

// 网格列表组件
class MyGridView extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 30,
      crossAxisCount: 3,
      children: <Widget>[
        Text("第一行第一列"),
        Text("第一行第二列"),
        Text("第一行第三列"),
        Text("第二行第一列"),
        Text("第二行第二列"),
        Text("第二行第三列"),
        Text("第三行第一列"),
        Text("第三行第二列"),
        Text("第三行第三列"),
      ],
    );
  }
}

// 表单组件
class MyForm extends StatefulWidget {
  @override 
  MyFormState createState() => MyFormState();
}
class MyFormState extends State<MyForm> {

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String userName = "";
  String passWord = "";

  void login() {
    var loginForm = loginKey.currentState;
    if(loginForm!.validate()) {
      loginForm.save();
      print("userName:${userName}, passWord: ${passWord}");
    }
  }

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: loginKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "请输入用户名",
                  ),
                  onSaved: (value) => {
                    userName = value as String
                  },
                  onFieldSubmitted: (value) => {},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "请输入密码"
                  ),
                  obscureText: true,
                  validator: (value) {
                    return (value as String).length < 6 ? "密码长度不够" : null ;
                  },
                  onSaved: (value) => { passWord = value as String},
                  onFieldSubmitted: (value) => {},
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 340,
          height: 40,
          child: RaisedButton(
            onPressed: login,
            child: Text("登录",style: TextStyle(fontSize: 18),),
          ),
        )
      ],
    ); 
  }
}