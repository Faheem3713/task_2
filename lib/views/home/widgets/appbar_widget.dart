import 'package:flutter/material.dart';

SliverAppBar appBarWidget() {
  return const SliverAppBar(
    elevation: 0,
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('assets/images/profile.png'),
    ),
    title: Text('sjdslj'),
    actions: [
      Icon(
        Icons.search,
        color: Colors.black,
      )
    ],
  );
}
