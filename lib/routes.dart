import 'package:flutter/material.dart';

import 'screens/my_home_page.dart';

class GwmcRoute {
  final String name; //路由名字
  final String route; //路由
  final WidgetBuilder builder;

  GwmcRoute({required this.name, required this.route, required this.builder});
}

/* 每添加一个示例页，在此添加到数组中,则自动在首屏列表有 */
final screens = [
  GwmcRoute(
    name: MyHomePage.name,
    route: MyHomePage.routeName,
    builder: (context) => const MyHomePage(title: "跟我买车首页"),
  ),
];

final screensRoutes = Map.fromEntries(
    screens.map((gwmcRoute) => MapEntry(gwmcRoute.route, gwmcRoute.builder)));

final allRoutes = <String, WidgetBuilder>{
  ...screensRoutes,
};
