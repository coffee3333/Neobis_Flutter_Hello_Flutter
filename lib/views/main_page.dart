import 'package:flutter/material.dart';
import 'package:todo_project/views/add_button_view.dart';
import 'package:todo_project/views/appbar_view.dart';
import 'package:todo_project/views/task_list_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: TaskListView(),
      floatingActionButton: AddTaskView(),
    );
  }
}
