import 'package:flutter/material.dart';

class TitleAndColumn extends StatelessWidget {
  const TitleAndColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notable works",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Based on the popularity of articles",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey)),
        ]);
  }
}