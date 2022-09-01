import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';

class TryCatchFinally extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "测试TryCatchFinally",
      home: Scaffold(
        appBar: AppBar(
          title: Text("测试TryCatchFinally"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("控制台测试 TryCatch"),
                onPressed: testTryCatchFinally,
              ),
            ],
          )
        ),
      ),
    );
  }

  // 测试TryCatchFinally的语法
  void testTryCatchFinally() async {
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://127.0.0.1:3001/getHttpClientData"));
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    } on Exception catch (e) {
      print("错误: ${e}");
    } catch(e) {
      print("错误详情: ${e}");
    } finally {
      print("因为有错误，不显示");
    }
  }

}