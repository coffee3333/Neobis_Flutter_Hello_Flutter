import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_project/assets/consts/color_consts.dart';
import 'package:todo_project/models/model.dart';

class AppViewModel extends ChangeNotifier {
  List<TaskModel> listTasks = <TaskModel>[];
  ColorConsts colorConst = ColorConsts();

  int get lengthTasks => listTasks.length;

  String getTaskTitle(int index) {
    return listTasks[index].taskTitle;
  }

  void addTask(TaskModel newTask) {
    listTasks.add(newTask);
    notifyListeners();
  }

  void deleteTask(int index) {
    listTasks.removeAt(index);
    notifyListeners();
  }

  String getTaskTitile(int index) {
    return listTasks[index].taskTitle;
  }
}
