import 'package:flutter/material.dart';
import 'package:todo_project/view_models/app_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(30))),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    HapticFeedback.mediumImpact();
                    viewModel.deleteTask(index);
                  },
                  background: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(Icons.delete, color: Colors.red.shade700)),
                  ),
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade50,
                      child: ListTile(
                          title: Text(viewModel.getTaskTitile(index)))));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemCount: viewModel.lengthTasks),
      );
    });
  }
}
