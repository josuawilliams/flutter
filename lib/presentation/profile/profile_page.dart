import 'package:flutter/material.dart';
import 'package:learn_flutter/presentation/profile/widgets/card_profile_widget.dart';
import 'package:learn_flutter/presentation/profile/widgets/discover_list_card_widget.dart';
import 'package:learn_flutter/presentation/profile/widgets/featured_layout.dart';
import 'package:learn_flutter/presentation/profile/widgets/title_and_column_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
            // ignore: avoid_unnecessary_containers
            child: Column(
          children: [
            const CardProfile(),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: natureDiscovery(),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              margin: const EdgeInsets.only(
                  top: 40, left: 15, right: 15, bottom: 10),
              child: const FeaturedLayoutWidget(),
            )
          ],
        )),
      )),
    );
  }

  Widget natureDiscovery() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleAndColumn(),
          const SizedBox(
            height: 20,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return const DiscoverListItemWidget();
                }),
          ),
        ],
      ),
    );
  }
}
