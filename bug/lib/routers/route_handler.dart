import 'package:bug/myprovider.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/second_page.dart';

// 创建handler来接收路由参数及返回对象
Handler secondPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      String? goodId = params['goodId']?.first;
      return SimpleComponent(goodId: goodId);
    }
);