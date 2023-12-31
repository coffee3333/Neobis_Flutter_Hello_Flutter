import 'package:flutter/material.dart';
import 'package:todo_project/view_models/app_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: viewModel.colorConst.clrLvl2,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: getListView(viewModel),
          ),
        );
      },
    );
  }

  ListView getListView(AppViewModel viewModel) {
    return ListView.separated(
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
                  color: viewModel.colorConst.clrRdl6,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(Icons.delete, color: viewModel.colorConst.clrRdl5),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: viewModel.colorConst.clrLvl1,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: ListTile(
                title: Text(
                  viewModel.getTaskTitile(index),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: viewModel.lengthTasks);
  }
}
