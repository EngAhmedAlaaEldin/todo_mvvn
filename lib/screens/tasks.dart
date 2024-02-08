import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo_mvvn/screens/widget/task_item.dart';
import 'package:todo_mvvn/style/app_colors.dart';

class Tasks extends StatefulWidget {
  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  DateTime Date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: AppColors.lightColor,
          height: 120,
          selectedTextColor: Colors.white,
          onDateChange: (NewDate) {
            // New date selected
            setState(() {
              Date = NewDate;
            });
          },
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
    return TaskItem();
        } ,itemCount: 5,))


      ],
    );
  }
}
