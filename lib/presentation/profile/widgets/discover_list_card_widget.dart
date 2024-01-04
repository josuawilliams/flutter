import 'package:flutter/material.dart';

class DiscoverListItemWidget extends StatelessWidget {
  const DiscoverListItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 200,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/download.jpg"))),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 3,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nature",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text(
                      "Let us plant more trees from this year",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
