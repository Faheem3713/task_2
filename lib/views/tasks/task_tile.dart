import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../dashboard/dashboard.dart';
import '../home/widgets/image_stack.dart';
import '../my_home_page.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) => TaskListTile(
                index: index,
              ),
          itemCount: 4),
    );
  }
}

class TaskListTile extends StatelessWidget {
  const TaskListTile({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardPage(),
                ));
          },
          child: Column(
            children: [
              const ListTile(
                title: Text('App Animation'),
                subtitle: Text('Today shared by - unbox digital'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Team',
                          style: kTitleStyle,
                        ),
                      ),
                      const SizedBox(width: 200, child: ImageStack()),
                      subTitleText('June 11 2021 - July 11 20221')
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(child: titleText('65%')),
                      ),
                      Positioned(
                          child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          strokeWidth: 8,
                          value: 65 / 100,
                          color: colorList[index],
                          backgroundColor: Colors.grey[300],
                        ),
                      ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
