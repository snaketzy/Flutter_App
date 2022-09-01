
import 'package:flutter/material.dart';

/**范型 */
class MyGeneric extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "范型测试",
      home: Scaffold(
        appBar: AppBar(
          title: Text("范型测试"),
        ),
        body: Center(
          child: Text("范型测试"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("""范型\n测试"""),
          onPressed:() {

          }
        )
      ),
    );
  }
}