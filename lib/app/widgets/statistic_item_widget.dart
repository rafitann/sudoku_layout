import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'game_card_widget.dart';

class StatisticItemWidget extends StatelessWidget {
  const StatisticItemWidget({Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        body,
      ],
    );
  }
}
