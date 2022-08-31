import 'package:flutter/material.dart';

// void main() {
//   runApp(HelloWorld());
// }

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter For Jerry"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}