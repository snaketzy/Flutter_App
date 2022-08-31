import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(HelloWorld());
// }

class UrlLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "使用第三方包示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("使用第三方包示例"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              const url = "https://www.github.com";
              launch(url);
            },
            child: Text("打开Github"),
          ),
        ),
      ),
    );
  }
}