import 'package:chennai_task_1/constants/constants.dart';
import 'package:chennai_task_1/views/my_home_page.dart';

import 'package:flutter/material.dart';

import 'tasks/task_page.dart';

class SelectionPage extends StatelessWidget {
  SelectionPage({super.key});
  static const List<Widget> _pages = [MyHomePage(), TaskPage()];
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorList[1],
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (context, val, _) {
            return BottomNavigationBar(
                showSelectedLabels: false,
                onTap: (value) => selectedIndex.value = value,
                currentIndex: val,
                selectedItemColor: colorList[1],
                unselectedItemColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.file_open_rounded), label: 'file'),
                  BottomNavigationBarItem(icon: SizedBox(), label: 'file'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message), label: 'notification'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Settings'),
                ]);
          }),
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) => _pages[value],
      ),
    );
  }
}
