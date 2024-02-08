import 'package:flutter/material.dart';
import 'package:todo_mvvn/style/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: AppColors.lightColor,

              ),
                height: 100,
                width: 5,
                margin: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 6)),
            SizedBox(
                height: 12, width: MediaQuery.of(context).size.width * .05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Task Title",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColors.lightColor)),
                SizedBox(height: 9),
                Text("Task Description",
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Spacer(),
            Container(
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.lightColor),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                child: Icon(
                  Icons.done,
                ))
          ],
        ),
      ),
    );
  }
}
