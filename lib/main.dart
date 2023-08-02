import 'package:chennai_task_1/constants/constants.dart';
import 'package:chennai_task_1/views/selection_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black, primarySwatch: white),
      home: SelectionPage(),
    );
  }
}
