import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/display_all.dart';
import 'screens/my_home_page.dart';

void main() {
  runApp(const GwmcApp());
}

class GwmcApp extends StatelessWidget {
  const GwmcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gwmc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: allRoutes,
      // initialRoute: MyHomePage.routeName, //使用时initialRoute，请勿定义home属性
      home: const DisplayAll(),
    );
  }
}
