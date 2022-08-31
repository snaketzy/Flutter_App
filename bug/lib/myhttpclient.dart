import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';


class MyHttpClient extends StatelessWidget {
  // 获取数据
  void getHttpClientData() async {
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://127.0.0.1:3000/getHttpClientData"));

      HttpClientResponse response = await request.close();

      var result = await response.transform(utf8.decoder).join();

      print(result);

      httpClient.close();

    } catch (e) {
      print("请求失败: ${e}");
    } finally {

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HttpClient请求",
      home: Scaffold(
        appBar: AppBar(
          title: Text("HttpClient请求"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("发起HttpClient请求"),
            onPressed: getHttpClientData,
          )
          
        ),
      )
    );
  }
}