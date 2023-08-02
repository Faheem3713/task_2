import 'package:chennai_task_1/constants/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/card_widget.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/task_list_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: CustomScrollView(
          slivers: [
            appBarWidget(),
            SliverToBoxAdapter(
              child: subTitleText('Hello'),
            ),
            SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                sliver: SliverToBoxAdapter(child: titleText('Alex Marconi'))),
            SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / .6,
              crossAxisCount: 2,
              children: [
                CardWidget(
                    arcColor: colorList[2],
                    icon: Icons.schedule,
                    text: 'In progress',
                    colour: colorList[0]),
                CardWidget(
                    arcColor: Colors.indigoAccent,
                    icon: Icons.repeat_rounded,
                    text: 'Ongoing',
                    colour: colorList[1]),
                CardWidget(
                    arcColor: Colors.green,
                    icon: Icons.file_open_sharp,
                    text: 'Completed',
                    colour: colorList[3]),
                CardWidget(
                    arcColor: colorList[0],
                    icon: Icons.free_cancellation,
                    text: 'Cancel',
                    colour: colorList[2]),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              sliver: SliverToBoxAdapter(
                  child: Row(
                children: [
                  titleText('Daily Task'),
                  const Spacer(),
                  subTitleText('All task'),
                  const Icon(Icons.keyboard_arrow_down_sharp)
                ],
              )),
            ),
            SliverList.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return TaskListWidget(color: colorList[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}

Text subTitleText(String text) {
  return Text(text, style: kSubtitleStyle);
}

Text titleText(String text) {
  return Text(text, style: kTitleStyle);
}
