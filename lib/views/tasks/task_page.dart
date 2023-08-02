import 'package:chennai_task_1/constants/constants.dart';
import 'package:chennai_task_1/views/my_home_page.dart';
import 'package:flutter/material.dart';

import '../home/widgets/appbar_widget.dart';
import 'task_tile.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: CustomScrollView(
            slivers: [
              appBarWidget(),
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                sliver: SliverToBoxAdapter(
                  child: titleText('Project'),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: 50,
                    child: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      bottom: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          indicator: ShapeDecoration(
                              shape: const StadiumBorder(),
                              color: colorList[1]),
                          tabs: const [
                            Tab(child: Text('All')),
                            Tab(child: Text('On going')),
                            Tab(child: Text('Completed')),
                          ]),
                    )),
              ),
              const SliverFillRemaining(
                child: TabBarView(
                    children: [AllTasks(), Text('2nd'), Text('3rd')]),
              )
            ],
          ),
        )),
      ),
    );
  }
}
