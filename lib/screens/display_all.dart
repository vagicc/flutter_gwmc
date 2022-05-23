import 'package:flutter/material.dart';

import '../routes.dart';

class DisplayAll extends StatelessWidget {
  const DisplayAll({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(title: Text("显示所有屏")),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ...screens.map((gwmcRoute) => RouteList(sampleRoute: gwmcRoute)),
        ],
      ),
    );
  }
}

/* 单个列表样式 */
class RouteList extends StatelessWidget {
  static int listNum = 1;
  final GwmcRoute sampleRoute;
  const RouteList({Key? key, required this.sampleRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    /* 按奇偶返回不同按纽 */
    Widget returnButton = (++listNum % 2 != 1)
        ? ElevatedButton(
            // style: style,
            onPressed: () => Navigator.pushNamed(context, sampleRoute.route),
            child: Text(sampleRoute.name),
          )
        : OutlinedButton(
            child: Text(sampleRoute.name),
            onPressed: () {
              Navigator.pushNamed(context, sampleRoute.route);
            },
          );
    // print("listNum % 2 = ${listNum % 2}");

    return returnButton;
  }
}
