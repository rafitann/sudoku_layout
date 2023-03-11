import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sudoku_layout/app/pages/statistic_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          brightness: Brightness.light,
          textTheme:
              CupertinoTextThemeData(primaryColor: CupertinoColors.black)),
      home: StatisticPage(),
    );
  }
}
