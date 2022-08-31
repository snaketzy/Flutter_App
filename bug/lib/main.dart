import 'package:flutter/material.dart';
import 'package:bug/myhomepage.dart';
import 'package:bug/helloworld.dart';
import 'package:bug/url_launcher.dart';
import 'package:bug/myprovider.dart';
import 'package:bug/myhttp.dart';
import 'package:bug/myhttpclient.dart';

void main() {
  // runApp(MyApp());
  // runApp(UrlLauncher());
  // runApp(MyProvider());
  // runApp(MyHttp());
  runApp(MyHttpClient());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page For Jerry'),
    );
  }
}
