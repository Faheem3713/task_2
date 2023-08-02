import 'package:flutter/material.dart';
import '../my_home_page.dart';
import 'widgets/check_box.dart';
import 'widgets/details_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          titleText('Dashboard Design'),
          const TaskDetailsCard(index: 3),
          titleText('Project Progress'),
          const CheckBoxWidget(
            text: 'Create userflow',
            isCheck: true,
          ),
          const CheckBoxWidget(
            text: 'Create wireframe',
            isCheck: true,
          ),
          const CheckBoxWidget(
            text: 'Transform to visual design',
            isCheck: false,
          ),
          const SectionTwo(),
          Image.asset('assets/images/2797ff6.jpg')
        ],
      ),
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleText('Project overview'),
        Container(
          width: 73,
          height: 35,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.transparent,
                style: BorderStyle.solid,
                width: 0.80),
          ),
          child: DropdownButton(
            padding: const EdgeInsets.all(0),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            underline: const SizedBox(),
            items: const [
              DropdownMenuItem(
                value: 0,
                child: Text('Weekly'),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text('Daily'),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text('Monthly'),
              ),
            ],
            onChanged: (value) {},
            isExpanded: true,
            value: 0,
          ),
        )
      ],
    );
  }
}
