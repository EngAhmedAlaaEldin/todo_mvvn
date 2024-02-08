import 'package:flutter/material.dart';
import 'package:todo_mvvn/screens/add_task_botton_sheet.dart';
import 'package:todo_mvvn/screens/setting.dart';
import 'package:todo_mvvn/screens/tasks.dart';

class HomeLauOut extends StatefulWidget {
  static const String routeNamed = "homeLayOut";

  @override
  State<HomeLauOut> createState() => _HomeLauOutState();
}

class _HomeLauOutState extends State<HomeLauOut> {
  int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: const Text("ToDo")),

      ///const ssssssssssssssssssssssssssssssssssssssssssssssssssssss
      ///ssssssssssssssssssssssssssssssssssssssssssssssssssssss
      bottomNavigationBar: BottomAppBar(
        notchMargin: 9,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: index,
          onTap: (value) {
            value = index;
            setState(() {
              value=index;
            });
          },
          items: const [

            BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings "),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ///aggggggggggggggggggggggggggggggggggggggggggggg
      ///gggggggggggggggggggggggggggggggggggggggggggggggggggggggg
      ///gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg
      floatingActionButton: FloatingActionButton(
        shape:
            StadiumBorder(side: BorderSide(width: 4.3, color: Colors.white54)),
        onPressed: () {
          ShawAddTaskSheet();
        },
        child: Icon(

          Icons.add,
          size: 32,
        ),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [Setting(), Tasks()];

  void ShawAddTaskSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: AddTaskBottonSheets(),
      ),
    );
  }
}
