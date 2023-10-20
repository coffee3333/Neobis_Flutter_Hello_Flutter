import 'package:flutter/widgets.dart';
import 'package:todo_project/models/model.dart';

class AppViewModel extends ChangeNotifier {
  List<TaskModel> listTasks = <TaskModel>[];

  int get lengthTasks => listTasks.length;
}
