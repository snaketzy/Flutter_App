import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handler.dart';

// 路由集
class Routes {
  // 根路径
  static String root = "/";
  static String secondPage = "/secondPage";

  // 配置路由对象
  static void configureRoutes (FluroRouter route) {

    // 没有找到路由的回调方法
    route.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context,Map<String, List<String>> params) {
        print("error::: router 没有找到");
        return;
      }
    );

    // 第二页的路由处理逻辑
    route.define(secondPage, handler: secondPageHandler);
  }
}

