import 'package:todo_project/models/model.dart';

List<TaskModel> addTasks() {
  List<TaskModel> list = <TaskModel>[];
  for (int i = 0; i <= 20; i++) {
    print("init adding data");
    TaskModel model = TaskModel("Task title $i", "Some desc", false);
    list.add(model);
  }
  return list;
}
