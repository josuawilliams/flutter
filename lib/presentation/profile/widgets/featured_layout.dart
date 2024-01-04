import 'package:flutter/material.dart';

class FeaturedLayoutWidget extends StatelessWidget {
  const FeaturedLayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.teal[800],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: const Text(
                "Featured Article",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Natural mood regulation low or even abset in people with depression",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}