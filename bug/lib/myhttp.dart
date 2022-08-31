import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MyHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "http请求示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("http请求示例"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              const url = "http://127.0.0.1:3000/getHttpData";
              http.get(url).then((response) {
                print("状态:${response.statusCode}");
                print("正文:${response.body}");
              });
            },
            child: Text("发起Http请求"),
          ),
        ),
      ),
    );
  }
}