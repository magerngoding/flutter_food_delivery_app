// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          // List tab
          Tab(
            icon: Icon(
              Icons.home,
              size: 24.0,
            ),
          ),

          // 2nd Tab
          Tab(
            icon: Icon(
              Icons.settings,
              size: 24.0,
            ),
          ),

          // 3nd Tab
          Tab(
            icon: Icon(
              Icons.accessible_forward_sharp,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
