import 'package:flutter/material.dart';
import 'package:todo_mvvn/style/app_colors.dart';

class AddTaskBottonSheets extends StatefulWidget {
  @override
  State<AddTaskBottonSheets> createState() => _AddTaskBottonSheetsState();
}

class _AddTaskBottonSheetsState extends State<AddTaskBottonSheets> {
  var FormKey = GlobalKey<FormState>();
  String selected = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Form(
        key: FormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add New Task",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
            ),
            SizedBox(),
            TextFormField(

              validator: (value) {
                // ignore: unrelated_type_equality_checks
                if (value == Null || value!.isEmpty) {
                  return "please enter task title";
                }
              },
              maxLength: 5,
              decoration: InputDecoration(
                  label: Text("Task Tilte"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightColor),
                      borderRadius: BorderRadius.circular(18)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightColor),
                      borderRadius: BorderRadius.circular(18))),
            ),

            ///ssssssssssss
            SizedBox(
              height: 16,
            ),
            TextFormField(
              validator: (value) {
                if (value == Null || value!.isEmpty) {
                  return "please enter task title";
                }
              },
              decoration: InputDecoration(
                  label: Text("Task Description"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightColor),
                      borderRadius: BorderRadius.circular(18)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightColor),
                      borderRadius: BorderRadius.circular(18))),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  ChooseData();
                },
                child: Text(
                  "Select Date",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Text(
              selected,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightColor),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  if (FormKey.currentState!.validate()) {}
                },
                child: Text("Add Task"))
          ],
        ),
      ),
    );
  }

  void ChooseData() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 466)));
    if (selectedDate != Null) {
      selected = selectedDate.toString().substring(0, 10);
      setState(() {});
    }
  }
}
