import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/models/model.dart';
import 'package:todo_project/view_models/app_view_model.dart';

class DialogView extends StatelessWidget {
  DialogView({super.key});
  final TextEditingController _textAddTitleController = TextEditingController();
  final TextEditingController _textAddDescController = TextEditingController();

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
        content: TextField(
          controller: _textAddDescController,
          maxLines: 4,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Descripton",
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              TaskModel newTask = TaskModel(_textAddTitleController.text,
                  _textAddDescController.text, false);
              viewModel.addTask(newTask);
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          )
        ],
      );
    });
  }
}
