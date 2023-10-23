import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/models/model.dart';
import 'package:todo_project/view_models/app_view_model.dart';

class DialogView extends StatelessWidget {
  DialogView({super.key});
  final TextEditingController _textAddTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return AlertDialog(
        title: TextField(
          controller: _textAddTitleController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Title",
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              if (_textAddTitleController.text.isNotEmpty) {
                TaskModel newTask = TaskModel(_textAddTitleController.text);
                viewModel.addTask(newTask);
              }
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          )
        ],
      );
    });
  }
}
