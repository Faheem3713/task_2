import 'package:flutter/material.dart';

import 'image_stack.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: [
            const Expanded(child: Icon(Icons.verified_outlined)),
            Expanded(
              flex: 5,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('App Animation'),
                    ),
                    LinearProgressIndicator(
                      value: 40 / 100,
                      color: color,
                      backgroundColor: Colors.grey[300],
                      minHeight: 10,
                    )
                  ]),
            ),
            const Expanded(
              flex: 2,
              child: ImageStack(),
            )
          ],
        ),
      ),
    );
  }
}
