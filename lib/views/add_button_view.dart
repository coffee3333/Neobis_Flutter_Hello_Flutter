import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Colors.dart';
import 'package:todo_project/view_models/app_view_model.dart';
import 'package:todo_project/views/alert_dialog_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorConsts().clrLvl3,
                foregroundColor: ColorConsts().clrLvl1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              HapticFeedback.heavyImpact();
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogView();
                  });
            },
            child: const Icon(
              Icons.add,
              size: 30,
            )),
      );
    });
  }
}
