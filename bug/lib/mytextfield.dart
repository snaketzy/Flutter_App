import 'package:flutter/material.dart';

// 文本输入框案例
class MyTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      TextEditingController controller = TextEditingController();

      return MaterialApp(
        title: "文本输入框案例",
        home: Scaffold(
          appBar: AppBar(
            title: Text("文本输入框案例"),
          ),
          body: Center(
            child: Padding(
              padding:EdgeInsets.all(20),
              child: TextField(
                maxLength: 30,
                maxLines: 1,
                autocorrect: true,
                autofocus: true,
                obscureText: false,
                textAlign: TextAlign.start,
                controller: controller,
                onChanged: (text){
                  print("改变 ${text}");
                },
                onSubmitted: (text) {
                  print("提交 ${text}");
                },
              ),
            ),
          ),
        ),
      );
  }
}