import 'package:flutter/material.dart';
import 'package:todo_project/views/header_view.dart';
import 'package:todo_project/views/task_list_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            bottom: false,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: HeaderInfo(),
                  ),
                  Expanded(
                    flex: 10,
                    child: TaskListView(),
                  )
                ])));
  }
}
