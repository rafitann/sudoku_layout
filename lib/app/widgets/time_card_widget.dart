import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimeCardWidget extends StatelessWidget {
  const TimeCardWidget(
      {Key? key,
      required this.icon,
      required this.title,
      required this.description})
      : super(key: key);

  final IconData icon;
  final String title;
  final Widget description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(top: 8),
      color: const Color(0xFFf0f3f8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Icon(icon),
            const SizedBox(height: 8,),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8,),
            description,
          ],
        ),
      ),
    );
  }
}
